# Forevercraft Main Tick — Custom Build
# Modules: advantage, core


# ══════════ MODULE: ADVANTAGE ══════════
# === ADVANTAGE CODEX: Disconnect recovery ===
# If player had codex open when they disconnected, clean up orphaned entities
execute as @a[tag=!ec.joined,tag=Adv.InMenu] at @s run function evercraft:advantage/gui/close


# === ADVANTAGE TREE SYSTEM ===
# GUI tick — unified hub tick handles all sections (distance, hold, clicks)
execute as @a[tag=Adv.InMenu] at @s run function evercraft:codex/hub/tick
# Handle menu trigger (legacy — opens hub now instead of advantage trees directly)
execute as @a[scores={adv.menu=1..}] at @s run function evercraft:codex/hub/open
scoreboard players enable @a[scores={adv.menu=1..}] adv.menu
scoreboard players set @a[scores={adv.menu=1..}] adv.menu 0
# GUI clear trigger (from help menu chat click)
execute as @a[scores={adv.guiclear=1..}] at @s run function evercraft:codex/hub/help/gui_clear_confirm
scoreboard players enable @a[scores={adv.guiclear=1..}] adv.guiclear
scoreboard players set @a[scores={adv.guiclear=1..}] adv.guiclear 0
# Handle bulk claim trigger (1=realm, 2=personal stages, 3=craftforever, 4=affinity, 5=lore, 6=biome, 10-15=per-category)
execute as @a[scores={ec.bulk_clm=1}] run function evercraft:claim/bulk_claim_personal
execute as @a[scores={ec.bulk_clm=2}] run function evercraft:claim/bulk_claim_personal_stages
execute as @a[scores={ec.bulk_clm=2}] run scoreboard players set @s ec.claim_shw -1
execute as @a[scores={ec.bulk_clm=3}] run function evercraft:claim/bulk_claim_craftforever
execute as @a[scores={ec.bulk_clm=4}] run function evercraft:claim/bulk_claim_affinity
execute as @a[scores={ec.bulk_clm=5}] run function evercraft:claim/bulk_claim_lore
execute as @a[scores={ec.bulk_clm=6}] run function evercraft:claim/bulk_claim_biome
execute as @a[scores={ec.bulk_clm=10}] run function evercraft:claim/bulk_claim_cat_origins
execute as @a[scores={ec.bulk_clm=11}] run function evercraft:claim/bulk_claim_cat_social
execute as @a[scores={ec.bulk_clm=12}] run function evercraft:claim/bulk_claim_cat_guild
execute as @a[scores={ec.bulk_clm=13}] run function evercraft:claim/bulk_claim_cat_adventure
execute as @a[scores={ec.bulk_clm=14}] run function evercraft:claim/bulk_claim_cat_combat
execute as @a[scores={ec.bulk_clm=15}] run function evercraft:claim/bulk_claim_cat_mastery
scoreboard players enable @a[scores={ec.bulk_clm=1..}] ec.bulk_clm
scoreboard players set @a[scores={ec.bulk_clm=1..}] ec.bulk_clm 0
# Handle auto-collect preference trigger (1=enable, 2=decline)
execute as @a[scores={ec.auto_clm=1}] run tellraw @s [{text:"\u2726 ",color:"yellow"},{text:"Auto-collect ",color:"green",bold:true},{text:"enabled! Rewards will be collected when you open the codex.",color:"gray"}]
execute as @a[scores={ec.auto_clm=1}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1.0 1.2
execute as @a[scores={ec.auto_clm=2}] run tellraw @s [{text:"\u2726 ",color:"yellow"},{text:"Auto-collect declined.",color:"gray"},{text:" You can enable it later from the codex settings.",color:"dark_gray"}]
scoreboard players enable @a[scores={ec.auto_clm=1..}] ec.auto_clm
# Handle advantage triggers (levelup, prestige, respec, cosmetic, challenge, etc.)
# OPT: Single @a scan + early-exit function instead of 9 separate @a scans
execute as @a run function evercraft:advantage/check_triggers

# Handle /trigger ec.ncore (Netherite Core configuration)
execute as @a[scores={ec.ncore=1..}] run function evercraft:artifacts/netherite_core/trigger_handler
scoreboard players enable @a[scores={ec.ncore=1..}] ec.ncore
scoreboard players set @a[scores={ec.ncore=1..}] ec.ncore 0

# Handle /trigger ec.codex_tp (Codex of Everything teleport)
execute as @a[scores={ec.codex_tp=1..}] run function evercraft:artifacts/codex_tp/trigger_handler
scoreboard players enable @a[scores={ec.codex_tp=1..}] ec.codex_tp
scoreboard players set @a[scores={ec.codex_tp=1..}] ec.codex_tp 0

# Handle /trigger ec.quest (Quest Board actions)
execute as @a[scores={ec.quest=1..}] run function evercraft:quests/board/trigger_handler
scoreboard players enable @a[scores={ec.quest=1..}] ec.quest
scoreboard players set @a[scores={ec.quest=1..}] ec.quest 0

# Handle /trigger tx.dep_conf (Transmute deposit confirmation)
execute as @a[scores={tx.dep_conf=1..}] at @s run function evercraft:transmute/gui/deposit_confirmed
scoreboard players enable @a[scores={tx.dep_conf=1..}] tx.dep_conf
scoreboard players set @a[scores={tx.dep_conf=1..}] tx.dep_conf 0

# ══════════ MODULE: CORE ══════════
# Evercraft Main Tick Function
# Runs every game tick for all evercraft systems

# Early exit if no players online
execute unless entity @a run return 0


# === SLOW DAYLIGHT: Advance DayTime by 1 every 3 real ticks ===
# gamerule minecraft:advance_time is false — we control DayTime manually
# Self-correct check moved to watchdog (every 5s) — no need to check every tick
scoreboard players add #daylight_counter ec.var 1
# OPT: Combined into one execute block to avoid duplicate score check
execute if score #daylight_counter ec.var matches 3.. run function evercraft:daylight/advance


# === SLEEP SKIP (advance_time is false, we handle sleep time-skip manually) ===
# Decrement cooldown
execute if score #sleep_skip_cd ec.var matches 1.. run scoreboard players remove #sleep_skip_cd ec.var 1
# OPT: sleeping_pos NBT scan every 5 ticks instead of every tick (saves ~80% of NBT reads)
# Sleep threshold is 100 ticks so 5-tick polling adds 5 per check — still accurate
scoreboard players add #sleep_poll ec.var 1
execute if score #sleep_poll ec.var matches 5.. run function evercraft:daylight/sleep_check
# After 100 ticks (5 seconds), skip to dawn
execute if score #sleep_wait ec.var matches 100 run function evercraft:daylight/sleep_skip


# === WATCHDOG: Ensure self-scheduling tick loops are running ===
# These use schedule function and can break on server crash
# Check every 100 ticks (5 seconds) and restart if needed
scoreboard players add #watchdog ec.var 1
execute if score #watchdog ec.var matches 100.. run function evercraft:watchdog/check
execute if score #watchdog ec.var matches 100.. run scoreboard players set #watchdog ec.var 0

# Trophy checks (every 5 seconds at watchdog 50)
execute if score #watchdog ec.var matches 50 as @a run function evercraft:trophy/check_all

# Raid victory revoke moved to achievements/tick (5s schedule) — OPT: avoid per-tick NBT check


# === RECONNECT DETECTION ===
# Player tags persist through logout — use leave_game stat to detect real reconnects
# When a player disconnects, Minecraft increments ec.leave; strip ec.joined so join logic fires
tag @a[scores={ec.leave=1..}] remove ec.joined
scoreboard players set @a[scores={ec.leave=1..}] ec.leave 0


# === ARCHAEOLOGY BRUSH COMPLETION ===
# OPT: Existence gate — skip when no sus_markers exist (zero cost when nobody is brushing)
execute if entity @e[type=minecraft:marker,tag=ec.sus_marker,limit=1] run function evercraft:structures/archaeology/on_excavate

# Titan's Shroud 4pc water walking (barrier placement needs instant per-tick response)
execute as @a[tag=titan_4pc] at @s run function evercraft:artifacts/sets/titan/water_walk


# === TOMB SYSTEM: DEATH DETECTION (must be per-tick for accurate death position) ===
# deathCount increments on the tick of death — capture position NOW before respawn
# Dreaming Realm override: death = wake up, no tomb (keepInventory is on)
execute as @a[tag=dr.in_realm,scores={ec.tomb_death=1..}] run function evercraft:dreaming_realm/exit/on_death
scoreboard players set @a[tag=dr.in_realm,scores={ec.tomb_death=1..}] ec.tomb_death 0
# Cooking Preservation: tag players with preserved meals BEFORE tomb clears death score
execute as @a[tag=!dr.in_realm,scores={ec.tomb_death=1..,ec.ck_preserve=1..}] run function evercraft:cooking/buff/on_death_preserve
# Normal death: tomb system for non-dream players
execute as @a[tag=!dr.in_realm,scores={ec.tomb_death=1..},gamemode=!creative,gamemode=!spectator] at @s run function evercraft:tomb/on_death
scoreboard players set @a[tag=!dr.in_realm,scores={ec.tomb_death=1..}] ec.tomb_death 0

# Cooking Preservation: restore preserved buffs on respawn (player alive with restore tag)
execute as @a[tag=CK.PreserveRestore] run function evercraft:cooking/buff/restore_preserved

# Artifact Codex system (book-based, using_item trigger — no restore needed)
execute if entity @a[scores={ec.codex_use=1..},limit=1] run function evercraft:codex/tick

# Eternal Codex system (codex selector hub — cycle tabs via shift+use, open via use)
execute if entity @a[scores={ec.ecodex_use=1..},limit=1] run function evercraft:ecodex/tick

# Codex combine/XP bank triggers (any player, any time)
execute as @a[scores={ec.codex_combine=1..}] run function evercraft:ecodex/process_combine

# Phoenix Codex system (awakened eternal — 4 tabs: FC, CF, Companion, Guidestone)
execute if entity @a[scores={ec.phoenix_use=1..},limit=1] run function evercraft:phoenix/tick

# Companion Catalogue system (book-based, mirrors Eternal Codex pattern exactly)
execute if entity @a[scores={ec.cc_use=1..},limit=1] run function evercraft:companions/handler/menu_v2/cc_tick

# Portal Dial system moved to 1s schedule (OPT-5, Session 9)
# Lodestone binding is a rare event that doesn't need tick precision

# Run artifact set detection and abilities
function evercraft:artifacts/sets/tick

# Splendid compass system
function evercraft:artifacts/sets/splendid/tick

# Mythical tools — vein mining, 3x3 dig, timber, item magnet
function evercraft:artifacts/mythical_tools/tick

# Right-click crop harvest — any hoe on mature crops harvests + replants
function evercraft:crop_harvest/tick

# Harvest XP — moved to 4t self-schedule (OPT: 75% fewer NBT item scans)
# XP Magnet — moved to 2t self-schedule (OPT: 50% fewer entity scans)

# Clean up dynamic looting enchant from artifact weapons (applied on kill, removed next tick)
execute as @a[tag=artifact_got_looting] run function evercraft:artifacts/abilities/melee/looting/remove

# Fortune bonus system - dynamically add fortune to held tools with fortune_bonus tag
function evercraft:artifacts/abilities/mining/fortune_tick

# Draconic Gale - restore consumed item, tick cooldown, Dragon's Spite passive
execute as @a[tag=ec.df_restore] at @s run function evercraft:artifacts/abilities/dragon_fan/restore
tag @a[tag=ec.df_restore] remove ec.df_restore
execute as @a[scores={ec.df_cd=1..}] run scoreboard players remove @s ec.df_cd 1
execute as @a if items entity @s weapon.mainhand minecraft:netherite_sword[custom_data~{artifact:"dragon_fan"}] run function evercraft:artifacts/abilities/dragon_fan/apply_spite


# === DUNGEON LOCKOUT EXPIRY CHECK (every 5s via watchdog) ===
execute if score #watchdog ec.var matches 99 as @a[scores={dg.lo_any=1..}] run function evercraft:dungeon/check_lockout


# === PLAYER TRIGGERS (score-gated — zero cost when nobody has triggered) ===
execute as @a[scores={ec.dreams=1..}] run function evercraft:dreams/check
scoreboard players enable @a[scores={ec.dreams=1..}] ec.dreams
scoreboard players set @a[scores={ec.dreams=1..}] ec.dreams 0
execute as @a[scores={ec.dr_history=1..}] run function evercraft:dreams/history
scoreboard players enable @a[scores={ec.dr_history=1..}] ec.dr_history
scoreboard players set @a[scores={ec.dr_history=1..}] ec.dr_history 0
execute as @a[scores={ec.lore_map=1..}] run function evercraft:lore/map/display
scoreboard players enable @a[scores={ec.lore_map=1..}] ec.lore_map
scoreboard players set @a[scores={ec.lore_map=1..}] ec.lore_map 0
execute as @a[scores={ec.moon=1..}] run function evercraft:moon/check
scoreboard players enable @a[scores={ec.moon=1..}] ec.moon
scoreboard players set @a[scores={ec.moon=1..}] ec.moon 0
execute as @a[scores={ec.loot_timer=1..}] run function evercraft:structures/storage/check_timer
scoreboard players enable @a[scores={ec.loot_timer=1..}] ec.loot_timer
scoreboard players set @a[scores={ec.loot_timer=1..}] ec.loot_timer 0
execute as @a[scores={ec.stats=1..}] run function evercraft:stats/show
scoreboard players enable @a[scores={ec.stats=1..}] ec.stats
scoreboard players set @a[scores={ec.stats=1..}] ec.stats 0
execute as @a[scores={ec.healthbar=1..}] run function evercraft:health_bar/toggle
scoreboard players enable @a[scores={ec.healthbar=1..}] ec.healthbar
scoreboard players set @a[scores={ec.healthbar=1..}] ec.healthbar 0
execute as @a[scores={ec.biome_mastery=1..}] run function evercraft:biome_mastery/display
scoreboard players enable @a[scores={ec.biome_mastery=1..}] ec.biome_mastery
scoreboard players set @a[scores={ec.biome_mastery=1..}] ec.biome_mastery 0
execute as @a[scores={ec.milestones=1..}] run function evercraft:milestones/display_router
scoreboard players enable @a[scores={ec.milestones=1..}] ec.milestones
scoreboard players set @a[scores={ec.milestones=1..}] ec.milestones 0

# Quest auto-tracker toggle
execute as @a[scores={ec.quest_track=1..}] run function evercraft:quests/tracker/toggle
scoreboard players enable @a[scores={ec.quest_track=1..}] ec.quest_track
scoreboard players set @a[scores={ec.quest_track=1..}] ec.quest_track 0

# Notification volume control (cycles 0→1→2→0)
execute as @a[scores={ec.notify_lvl=1..}] run function evercraft:util/notify_toggle
scoreboard players enable @a[scores={ec.notify_lvl=1..}] ec.notify_lvl
scoreboard players set @a[scores={ec.notify_lvl=1..}] ec.notify_lvl 0

# Dungeon ready-check confirm
execute as @a[scores={ec.ready=1..}] run function evercraft:dungeon/ready_confirm
scoreboard players enable @a[scores={ec.ready=1..}] ec.ready
scoreboard players set @a[scores={ec.ready=1..}] ec.ready 0

# Black market quick-sell
execute as @a[scores={ec.bm_quicksell=1..}] at @s run function evercraft:black_market/quick_sell
scoreboard players enable @a[scores={ec.bm_quicksell=1..}] ec.bm_quicksell
scoreboard players set @a[scores={ec.bm_quicksell=1..}] ec.bm_quicksell 0

# Difficulty selection (Newcomer / Adventurer)
execute as @a[scores={ec.diff_trigger=1..2}] run function evercraft:difficulty/choose

# Newcomer spirit choice — Combatant/Pacifist preference then weapon/tool selection
# 100 = Combatant chosen → show weapons menu
execute as @a[scores={ec.newcomer_pick=100},tag=!ec.spirit_chosen] at @s run function evercraft:newcomer/show_weapons
execute as @a[scores={ec.newcomer_pick=100},tag=!ec.spirit_chosen] run scoreboard players set @s ec.newcomer_pick 0
execute as @a[scores={ec.newcomer_pick=100},tag=!ec.spirit_chosen] run scoreboard players enable @s ec.newcomer_pick
# 101 = Pacifist chosen → show tools menu
execute as @a[scores={ec.newcomer_pick=101},tag=!ec.spirit_chosen] at @s run function evercraft:newcomer/show_tools
execute as @a[scores={ec.newcomer_pick=101},tag=!ec.spirit_chosen] run scoreboard players set @s ec.newcomer_pick 0
execute as @a[scores={ec.newcomer_pick=101},tag=!ec.spirit_chosen] run scoreboard players enable @s ec.newcomer_pick
# 1-14 = Spirit weapon selected
execute as @a[scores={ec.newcomer_pick=1..14},tag=!ec.spirit_chosen] run function evercraft:newcomer/grant_spirit_weapon
# 15-20 = Spirit tool selected
execute as @a[scores={ec.newcomer_pick=15..20},tag=!ec.spirit_chosen] run function evercraft:newcomer/grant_spirit_tool
# Invalid values — reset silently so trigger doesn't get stuck
execute as @a[scores={ec.newcomer_pick=21..99},tag=!ec.spirit_chosen] run scoreboard players set @s ec.newcomer_pick 0
execute as @a[scores={ec.newcomer_pick=21..99},tag=!ec.spirit_chosen] run scoreboard players enable @s ec.newcomer_pick
execute as @a[scores={ec.newcomer_pick=102..},tag=!ec.spirit_chosen] run scoreboard players set @s ec.newcomer_pick 0
execute as @a[scores={ec.newcomer_pick=102..},tag=!ec.spirit_chosen] run scoreboard players enable @s ec.newcomer_pick