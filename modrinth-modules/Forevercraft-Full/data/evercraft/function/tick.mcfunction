# Forevercraft Main Tick — Custom Build
# Modules: advantage, artifacts, bestiary, black-market, buddy-system, classes, combat-instances, cooking, core, cosmetics, craftforever, crates, dream-rate, dreaming-realm, gacha, guidestones, guilds, housing, lore, mastery, milestones, professions, quests, social, spirit-weapons, world-systems


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

# ══════════ MODULE: ARTIFACTS ══════════
# === ETERNAL CODEX: Disconnect recovery ===
# Clear stale use flag to prevent phantom menu open on rejoin
scoreboard players set @a[tag=!ec.joined,scores={ec.ecodex_use=1..}] ec.ecodex_use 0


# === PHOENIX CODEX: Disconnect recovery ===
scoreboard players set @a[tag=!ec.joined,scores={ec.phoenix_use=1..}] ec.phoenix_use 0


# === ACCESSORY PASSIVES (OPT-1, Session 9) ===
# All accessory passive effects (passive_regen, xp_boost, miners_blessing, mob_glow,
# tailwind, fast_fishing, pathfinder, crop_boost, mob_radar, structure_sense,
# vibration_sense, haggle) are now handled exclusively by accessories/tick (1s schedule).
# Effects have 5-15s durations so 1s refresh is sufficient. Cooldowns also in accessories/tick.
# This removes ~30 commands/tick/player (13 duplicate @a scans eliminated).

# Cleanup accessory attribute modifiers for items no longer held
# Moved to accessories/tick (1s schedule) — 1s stale modifier is imperceptible (OPT, Session 76)

# Codex of Everything - Spectator mode timer/cooldown
function evercraft:artifacts/codex_spectator/tick

# Dream Surge Event — timer countdown + modifier application
execute if score #ec_event_active ec.var matches 1 run function evercraft:event/tick


# === ARROW OF LIGHTNING ===
# OPT: Existence gate — skip all arrow scans when no unchecked/lightning arrows exist
execute if entity @e[type=spectral_arrow,tag=!ec.arrow_checked,limit=1] as @e[type=spectral_arrow,tag=!ec.arrow_checked] run function evercraft:arrows/check_new
# Only check tagged arrows for ground impact (fast tag+NBT check instead of deep item scan)
execute if entity @e[type=spectral_arrow,tag=ec.lightning_arrow,limit=1] as @e[type=spectral_arrow,tag=ec.lightning_arrow,nbt={inGround:1b}] at @s run function evercraft:arrows/lightning_strike


# === ARTIFACT TRANSMUTATION GUI ===
# Per-tick click detection for responsive GUI (same pattern as Advantage Trees)
execute as @a[tag=TX.InMenu] at @s run function evercraft:transmute/gui/tick


# === RUNEFORGE GUI ===
execute as @a[tag=RF.InMenu] at @s run function evercraft:glyphforge/gui/tick


# === HEALER ARTIFACT LOCKOUT ===
# Per-tick: tag fresh arrows from locked healers, show actionbar warnings
execute if entity @a[scores={ec.hl_locked=1..}] run function evercraft:artifacts/healer/lockout_tick


# === ARTIFACT WEAPON SYSTEMS ===
# OPT: Consolidated weapon detection — was 10 separate @a scans, now 1 with early exits
execute as @a run function evercraft:artifacts/weapons/detect_all


# === CLASS AFFINITY ===
execute as @a run function evercraft:affinity/detect_class
scoreboard players add #aff_timer ec.aff_timer 1
execute if score #aff_timer ec.aff_timer matches 72.. run function evercraft:affinity/passive_tick

# Spirit artifact system tick (existence-gated)
execute if entity @a[tag=ec.sp_active] run function evercraft:spirit/tick
# Spirit artifact deactivation check
execute as @a[tag=ec.sp_active] unless items entity @s weapon.mainhand *[custom_data~{spirit_artifact:true}] run function evercraft:spirit/deactivate
# Dual Swordsman class tick
execute if entity @a[tag=ec.ds_active] run function evercraft:dual_swordsman/tick

# Weapon tick dispatches (existence-gated — zero cost when nobody has that weapon)
execute if entity @a[tag=ec.kt_active] run function evercraft:artifacts/knight/tick
execute if entity @a[tag=ec.rg_active] run function evercraft:artifacts/rogue/tick
execute if entity @a[tag=ec.bk_active] run function evercraft:artifacts/berserker/tick
execute if entity @a[tag=ec.dn_active] run function evercraft:artifacts/dancer/tick
execute if entity @a[tag=ec.bl_active] run function evercraft:artifacts/beastlord/tick
execute if entity @a[tag=ec.jv_active] run function evercraft:artifacts/javelin/tick
execute if entity @a[tag=ec.sk_active] run function evercraft:artifacts/striker/tick
execute if entity @a[tag=ec.di_active] run function evercraft:artifacts/dragon_incarnate/tick

# Archer: draw stale detection + timers (no detect tag — uses draw-based detection)
scoreboard players add @a[scores={ec.ar_draw=1..}] ec.ar_stale 1
execute as @a[scores={ec.ar_stale=3..,ec.ar_draw=1..}] run function evercraft:artifacts/archer/on_fire
scoreboard players remove @a[scores={ec.ar_hit_timer=1..}] ec.ar_hit_timer 1
execute as @a[scores={ec.ar_hit_timer=0,ec.ar_charged=1,ec.ar_draw=0}] run scoreboard players set @s ec.ar_charged 0

# Hunter: aim check + precision hit timers
execute as @a[tag=ec.ht_active] run function evercraft:artifacts/hunter/aim_check
scoreboard players remove @a[scores={ec.ht_hit_timer=1..}] ec.ht_hit_timer 1
execute as @a[scores={ec.ht_hit_timer=0,ec.ht_charged=1}] run scoreboard players set @s ec.ht_charged 0
execute as @a[scores={ec.ht_hit_timer=0}] run scoreboard players set @s ec.ht_hit_timer -1

# Beastlord: reverse shield check (spear in offhand + shield in mainhand)
execute as @a if items entity @s weapon.offhand *[custom_data~{beastlord:true}] if items entity @s weapon.mainhand minecraft:shield run function evercraft:artifacts/beastlord/shield_check_reverse


# === CHRONO SHARD (Reset Token) ===
# OPT: Existence gate — skip when no players have active shard use or GUI open
execute if entity @a[tag=ec.cs_restore,limit=1] run function evercraft:chrono_shard/tick
execute unless entity @a[tag=ec.cs_restore,limit=1] if entity @a[scores={ec.cs_use=1..},limit=1] run function evercraft:chrono_shard/tick
execute unless entity @a[tag=ec.cs_restore,limit=1] unless entity @a[scores={ec.cs_use=1..},limit=1] if entity @a[scores={ec.cs_active=1},limit=1] run function evercraft:chrono_shard/tick

# ══════════ MODULE: BESTIARY ══════════
# === BESTIARY STAGE CLAIMS (trigger-based for non-op players) ===
function evercraft:bestiary/stages/tick_claims

# ══════════ MODULE: BLACK-MARKET ══════════
# === HEIST SYSTEM: Crash/disconnect recovery ===
execute as @a[tag=!ec.joined,scores={ec.heist_active=1..}] run function evercraft:heist/crash_recovery


# === HEIST: Intercept death before tomb ===
execute if score #heist_active ec.var matches 1 as @a[tag=ec.heist_active_tag,scores={ec.tomb_death=1..}] run function evercraft:heist/active/on_fail
execute if score #heist_active ec.var matches 1 run scoreboard players set @a[tag=ec.heist_active_tag] ec.tomb_death 0


# === BLACK MARKET HEIST SYSTEM ===
# Active heist tick (health monitoring, hit detection, timer, completion)
execute if score #heist_active ec.var matches 1 run function evercraft:heist/active/tick
# Heist trigger handler
execute as @a[scores={ec.heist=1..}] run function evercraft:heist/initiate
scoreboard players enable @a[scores={ec.heist=1..}] ec.heist
scoreboard players set @a[scores={ec.heist=1..}] ec.heist 0

# ══════════ MODULE: BUDDY-SYSTEM ══════════
# === TAMED ANIMAL BOND STATUS ===
execute as @a[scores={ec.bond=1..}] run function evercraft:tamed_bond/show_status
scoreboard players enable @a[scores={ec.bond=1..}] ec.bond
scoreboard players set @a[scores={ec.bond=1..}] ec.bond 0

# ══════════ MODULE: COMBAT-INSTANCES ══════════
# === SPIRIT RAID PROMPT: Disconnect recovery ===
# If player reconnects while prompted, auto-decline (they lost the chat context)
execute as @a[tag=!ec.joined,tag=sr.prompted] run scoreboard players set @s ec.sr_timer 0
execute as @a[tag=!ec.joined,tag=sr.prompted] run tag @s remove sr.prompted

# Clear quest preview state on rejoin
execute as @a[tag=!ec.joined,scores={ec.qp_active=1}] run scoreboard players set @s ec.qp_active 0

# Detect player join (unified briefing + init)
execute as @a[tag=!ec.joined] at @s run function evercraft:dreams/on_join

# Track current day for "While You Were Away" — moved to luck_buffs/tick (1s schedule, OPT-6)
# Day changes once per 72000 ticks; 1s granularity is more than sufficient

# Dream rate buff system moved to 1s schedule (OPT-5, Session 9)
# Attribute modifiers persist between checks, 1s refresh is sufficient

# Mob crate detection moved to self-scheduling (10t interval)
# Items have pickup_delay so 0.5s detection is fine

# Growth Serum - detect lingering potion area_effect_clouds
# Match thick potion base (unused in vanilla, unique to Growth Serum)
# OPT: Single existence gate → apply + tag in one pass (was 2 separate entity scans)
execute if entity @e[type=area_effect_cloud,tag=!ec.growth_checked,limit=1] run function evercraft:potions/growth_serum/scan


# === INFINITE CASTLE: Intercept death before tomb ===
execute if score #ic_active ec.var matches 1 as @a[tag=ic.player,scores={ec.tomb_death=1..}] run function evercraft:castle/on_death
execute if score #ic_active ec.var matches 1 run scoreboard players set @a[tag=ic.player] ec.tomb_death 0


# === DUNGEON DIFFICULTY MENU ===
execute as @a[tag=DG.InMenu] at @s run function evercraft:dungeon/menu/tick


# === DUNGEON INSTANCE SYSTEM ===
# Only tick when a dungeon is active (zero overhead otherwise)
execute if score #dg_active ec.var matches 1 run function evercraft:dungeon/tick_active


# === INFINITE CASTLE SYSTEM ===
execute if score #ic_active ec.var matches 1 run function evercraft:castle/tick_active
execute as @a[tag=IC.InMenu] at @s run function evercraft:castle/menu/check_clicks


# === SPIRIT RAIDS SYSTEM ===
# Tick raid logic (votes, floor progression, boss fights)
# Gate: only runs when raid is active or vote is active (zero overhead otherwise)
execute if score #rd_active ec.var matches 1 run function evercraft:raids/tick
execute if score #rd_vote_active ec.var matches 1 unless score #rd_active ec.var matches 1 run function evercraft:raids/tick


# === SPIRIT RAIDS: Intercept death before tomb ===
execute if score #rd_active ec.var matches 1 as @a[tag=rd.player,scores={ec.tomb_death=1..}] run function evercraft:raids/on_death
execute if score #rd_active ec.var matches 1 run scoreboard players set @a[tag=rd.player] ec.tomb_death 0

# ══════════ MODULE: COOKING ══════════
# === PANTRY ===
# Delayed pantry restore (consume_item fires before item removal — restore next tick)
execute as @a[tag=ec.pantry_restore] run function evercraft:pantry/restore_item


# === CAMPFIRE KITCHEN GUI ===
# Delayed utensil restore (consume_item fires before item removal — restore next tick)
execute as @a[tag=CK.Restore] run function evercraft:cooking/restore_utensil
# Per-tick: menu validation + click detection for players with kitchen open
execute as @a[tag=CK.InMenu] at @s run function evercraft:cooking/gui/tick

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

# ══════════ MODULE: CRAFTFOREVER ══════════
# === CRAFTFOREVER CODEX: Disconnect recovery ===
# If player had codex open when they disconnected, clean up orphaned entities
# close uses distance=..15 which may miss anchors if player respawned far away — global fallback after
execute as @a[tag=!ec.joined,tag=CF.InCodex] at @s run function evercraft:craftforever/codex/hub/close
# Fallback: kill orphaned entities globally if close couldn't reach the anchor
execute as @a[tag=!ec.joined,tag=CF.InCodex] run function evercraft:craftforever/codex/hub/close_orphaned


# === ARTISAN FORGE: Disconnect recovery ===
execute as @a[tag=!ec.joined,tag=CF.InMenu] run function evercraft:craftforever/forging/gui/close


# === RESONANCE STRIKE: Disconnect recovery ===
execute as @a[tag=!ec.joined,scores={ec.cf_reso=1}] run function evercraft:craftforever/nodes/resonance/cleanup


# === TRADE TRIALS: Crash/disconnect recovery ===
execute as @a[tag=!ec.joined,tag=ec.tt_player] run function evercraft:craftforever/trials/crash_recovery


# === TRADE TRIALS: Intercept death before tomb ===
execute if score #tt_active ec.var matches 1 as @a[tag=ec.tt_player,scores={ec.tomb_death=1..}] run function evercraft:craftforever/trials/on_death
execute if score #tt_active ec.var matches 1 run scoreboard players set @a[tag=ec.tt_player] ec.tomb_death 0


# === BIOME NODE SYSTEM (CRAFTFOREVER) ===
# Per-tick: detect biome node right-clicks
# OPT: Existence gate — skip entity scan when no biome nodes exist
execute if entity @e[type=interaction,tag=ec.cf_node_click,limit=1] as @e[type=interaction,tag=ec.cf_node_click] if data entity @s interaction at @s run function evercraft:craftforever/nodes/on_click
# Per-tick: progress bar for active biome mining (only when players are mining)
execute as @a[scores={ec.cf_mining=1}] at @s run function evercraft:craftforever/nodes/progress_step
# Per-tick: Resonance Strike minigame (sweeping cursor)
execute as @a[scores={ec.cf_reso=1}] at @s run function evercraft:craftforever/nodes/resonance/tick
# Handle /trigger ec.cf_codex (give codex item for testing)
execute as @a[scores={ec.cf_codex=1..}] run loot give @s loot evercraft:craftforever/codex_item
scoreboard players enable @a[scores={ec.cf_codex=1..}] ec.cf_codex
scoreboard players set @a[scores={ec.cf_codex=1..}] ec.cf_codex 0


# === CRAFTFOREVER CODEX GUI ===
# Delayed item restore (consume_item fires before removal — restore next tick)
# Process using_item flag (open/toggle codex) — only if NOT already in codex
# If already in menu, right-click re-consume just refreshes cooldown to flush stale interaction data
execute as @a[scores={ec.cf_codex_use=1..},tag=!CF.InCodex] at @s run function evercraft:craftforever/codex/on_activate
execute as @a[scores={ec.cf_codex_use=1..},tag=CF.InCodex] unless score @s ec.cf_codex_cd matches 1.. run scoreboard players set @s ec.cf_codex_cd 1
scoreboard players set @a[scores={ec.cf_codex_use=1..}] ec.cf_codex_use 0
# Per-tick: codex GUI tick for players with codex open
execute as @a[tag=CF.InCodex] at @s run function evercraft:craftforever/codex/hub/tick


# === SPIRIT TOOLS (GOD-TIER T10 Trade Trial rewards) ===
# Detection: check untagged players for spirit tool in mainhand
execute as @a[tag=!ec.st_held] run function evercraft:craftforever/spirit_tools/detect
# Tick: passives, effects, sneak-mastery detection (existence-gated)
execute if entity @a[tag=ec.st_held,limit=1] run function evercraft:craftforever/spirit_tools/tick
# Deactivation: remove tag if no longer holding spirit tool
execute as @a[tag=ec.st_held] unless predicate evercraft:spirit_tools/holding_any run function evercraft:craftforever/spirit_tools/deactivate
# Artifact tool class detection: set ec.caff_class for players holding artifact tools (not spirit tools)
execute as @a[tag=!ec.st_held] run function evercraft:craft_affinity/detect_artifact_tool


# === GRAND FORGE (5-phase craft gauntlet — existence-gated) ===
execute as @a[scores={ec.gf_active=1}] at @s run function evercraft:craftforever/grand_forge/tick


# === TRADE TRIALS SYSTEM ===
# Trial Anvil interactions, break detection, ambient particles (existence-gated inside)
function evercraft:craftforever/tick
# Per-tick: timer, score tracking, bossbar (only when active — zero overhead otherwise)
execute if score #tt_active ec.var matches 1 run function evercraft:craftforever/trials/tick
# Trial Anvil GUI tick (click detection for players with menu open)
execute as @a[tag=TT.InMenu] at @s run function evercraft:craftforever/trial_anvil/gui/tick
# Emergency exit trigger
execute as @a[tag=ec.tt_player,scores={ec.tt_exit=1..}] run function evercraft:craftforever/trials/emergency_exit
scoreboard players enable @a[scores={ec.tt_exit=1..}] ec.tt_exit
scoreboard players set @a[scores={ec.tt_exit=1..}] ec.tt_exit 0


# === ARTISAN FORGE GUI ===
execute as @a[tag=CF.InMenu] at @s run function evercraft:craftforever/forging/gui/tick


# === ARTISAN INFO TRIGGER ===
execute as @a[scores={ec.cf_info=1..}] run function evercraft:craftforever/artisan/breakdown
scoreboard players enable @a[scores={ec.cf_info=1..}] ec.cf_info
scoreboard players set @a[scores={ec.cf_info=1..}] ec.cf_info 0

# ══════════ MODULE: CRATES ══════════
# === CRATE ANIMATION SYSTEM ===
# OPT: Gate entire block — skip all 4 entity scans when no animations are active
execute if entity @e[type=armor_stand,tag=ec.crate_anim,limit=1] run function evercraft:crate_anim/tick_all

# ══════════ MODULE: DREAMING-REALM ══════════
# === DREAMING REALM: Crash/disconnect recovery ===
# If player reconnects while dream was active, clean up
execute as @a[tag=!ec.joined,scores={ec.dream_active=1..}] run function evercraft:dreaming_realm/exit/crash_recovery


# === DREAMING REALM ===
# Per-tick: timer, bossbar, fall catch, warnings (only when active — zero overhead otherwise)
execute if score #dr_active ec.var matches 1 run function evercraft:dreaming_realm/tick
# Handle /trigger ec.wake (emergency wake from Dreaming Realm)
execute as @a[tag=dr.in_realm,scores={ec.wake=1..}] run function evercraft:dreaming_realm/exit/wake_up
scoreboard players enable @a[scores={ec.wake=1..}] ec.wake
scoreboard players set @a[scores={ec.wake=1..}] ec.wake 0

# ══════════ MODULE: GACHA ══════════
# === FOUNTAIN OF ETERNAL DREAMS (GACHA SYSTEM) ===
# OPT: Existence gate — skip when no fountain entities exist + no players in menu
execute if entity @e[type=interaction,tag=ec.fountain_click,limit=1] run function evercraft:gacha/tick
execute if entity @a[tag=ec.InFountain,limit=1] unless entity @e[type=interaction,tag=ec.fountain_click,limit=1] run function evercraft:gacha/tick
# Hero's Dance cooldown — already decremented in artifacts/sets/tick (removed duplicate)

# ══════════ MODULE: GUILDS ══════════
# === PILLAGE PVP: Intercept death for kill scoring ===
execute if score #gd_event_active ec.var matches 1 if score #gd_event_type ec.var matches 2 as @a[scores={ec.tomb_death=1..,ec.gd_event_active=1}] at @s run function evercraft:guild/diplomacy/event/pvp/on_kill


# === GUILD STONE INTERACTION ===
# OPT: Existence gate — skip entity scan + NBT read when no guildstones exist
execute if entity @e[type=interaction,tag=ec.guildstone_interact,limit=1] as @e[type=interaction,tag=ec.guildstone_interact] if data entity @s interaction at @s run function evercraft:guild/gui/on_stone_click


# === GUILD MENU TICK ===
execute as @a[tag=ec.guild_in_menu,tag=!Adv.InMenu] at @s run function evercraft:guild/gui/menu/tick


# === GUILD SCATTER NODE CLICK DETECTION ===
# OPT: Existence gate — skip when no scatter nodes exist
execute if score #ge_scatter_active ec.var matches 1 as @e[type=interaction,tag=ec.guild_node_click] if data entity @s interaction at @s run function evercraft:guild/events/scatter/on_click


# === GUILD STONE BREAK DETECTION ===
# OPT: Existence gate — skip when no guildstones exist
execute if entity @e[type=marker,tag=ec.guildstone,limit=1] as @e[type=marker,tag=ec.guildstone] at @s unless block ~ ~-0.5 ~ minecraft:lodestone run function evercraft:guild/stone/on_break


# === GUILD SNOW GOLEM DEFENSE ===
# Per-tick snowball tracking + scaled damage by guild level (existence-gated)
execute if entity @e[type=snow_golem,tag=ec.gs_golem,limit=1] run function evercraft:guild/golem/tick

# ══════════ MODULE: HOUSING ══════════
# === HEARTHSTONE GUI ===
execute as @a[tag=HS.InMenu] at @s run function evercraft:housing/gui/tick


# === HOME SNOW GOLEM DEFENSE ===
# Per-tick snowball tracking + 3 damage on hit (existence-gated)
execute if entity @e[type=snow_golem,tag=hs.golem,limit=1] run function evercraft:housing/golem/tick


# === STASH LABEL ===
# Delayed label restore + process (consume_item fires before item removal — restore next tick)
execute as @a[tag=HS.Labeling] at @s run function evercraft:housing/stash/label/do_label


# === HOUSE KEY ===
# Delayed key restore + menu open (consume_item fires before item removal — restore next tick)
execute as @a[tag=HS.SatchelRestore] at @s run function evercraft:housing/satchel/restore_and_open
# Per-tick: menu validation + click detection for players with House Key menu open
execute as @a[tag=HS.InSatchel] at @s run function evercraft:housing/satchel/gui/tick


# === HOUSING LABORERS ===
# Contract restore (1-tick delay after consume_item — same pattern as healer artifacts)
execute as @a[tag=ec.lb_restore] at @s run function evercraft:laborer/hire/do_restore
# Laborer interaction clicks (per-tick for instant response)
execute if entity @e[type=interaction,tag=ec.lb_interact,limit=1] as @e[type=interaction,tag=ec.lb_interact] if data entity @s interaction run function evercraft:laborer/on_interact
# Laborer GUI tick (click detection for players with laborer menu open)
execute as @a[tag=LB.InMenu] at @s run function evercraft:laborer/gui/tick

# ══════════ MODULE: LORE ══════════
# === LORE DISCOVERY SYSTEM ===
# Per-tick: detect sparkle right-clicks
# OPT: Existence gate — skip entity scan when no lore sparkles exist
execute if entity @e[type=interaction,tag=ec.lore_click,limit=1] as @e[type=interaction,tag=ec.lore_click] if data entity @s interaction at @s run function evercraft:lore/on_click
# Per-tick: progress bar for active pickups (only when players are picking up)
execute as @a[scores={ec.lore_picking=1}] at @s run function evercraft:lore/progress_step
# Per-tick: pre-cache held physical lore item UID for consume detection
# OPT: Skip NBT read when cache is already populated (only read on first detect or item change)
# Clear cache when NOT holding a lore piece (switched away / consumed)
execute as @a[scores={ec.lore_cached=1..}] unless items entity @s weapon.mainhand *[custom_data~{lore_piece:true}] run scoreboard players set @s ec.lore_cached 0
# Read NBT only when cache is empty AND holding a lore piece (first pick-up or slot change)
execute as @a[scores={ec.lore_cached=..0}] if items entity @s weapon.mainhand *[custom_data~{lore_piece:true}] unless items entity @s weapon.mainhand written_book store result score @s ec.lore_cached run data get entity @s SelectedItem.components."minecraft:custom_data".lore_uid
# Per-tick: handle /trigger ec.lore_add (collection button in books)
execute as @a[scores={ec.lore_add=1..}] run function evercraft:lore/collect/try_add
scoreboard players enable @a[scores={ec.lore_add=1..}] ec.lore_add
scoreboard players set @a[scores={ec.lore_add=1..}] ec.lore_add 0

# ══════════ MODULE: SOCIAL ══════════
# === DUEL SYSTEM: Crash/disconnect recovery ===
execute as @a[tag=!ec.joined,scores={ec.duel_active=1..}] run function evercraft:duel/crash_recovery


# === PET DUEL: Disconnect recovery ===
execute if score #pd_active ec.var matches 1 as @a[tag=pd.duelist,tag=!ec.joined] run function evercraft:pet_duel/resolve_draw


# === DUEL: Intercept death before tomb ===
execute if score #duel_active ec.var matches 1.. as @a[tag=ec.duel_active_tag,scores={ec.tomb_death=1..}] run function evercraft:duel/active/on_death


# === CHALLENGE SYSTEM (Book-Based: Codex→Duel, Craftforever→Competition, Catalogue→Pet Duel) ===
# OPT: Throttled to every 5 ticks (250ms) — predicate checks per sneaker are expensive per-tick
scoreboard players add #duel_ray_cd ec.var 1
execute if score #duel_ray_cd ec.var matches 5.. run scoreboard players set #duel_ray_cd ec.var 0
# Pre-filter to sneaking, non-dueling players; check_and_raycast determines book type + routes
execute if score #duel_ray_cd ec.var matches 0 as @a[predicate=evercraft:is_sneaking,tag=!ec.duel_active_tag] at @s run function evercraft:challenge/check_and_raycast

# === DUEL SYSTEM ===
# Trigger handler (accept/decline/spectate)
execute as @a[scores={ec.duel=1..}] run function evercraft:duel/trigger_handler
execute as @a[scores={ec.duel=..-1}] run function evercraft:duel/trigger_handler
# Invite expiry — must run independently of active duel state
scoreboard players remove @a[scores={ec.duel_inv_cd=1..}] ec.duel_inv_cd 1
execute as @a[tag=duel.pending_target,scores={ec.duel_inv_cd=0}] run function evercraft:duel/invite/timeout
# Team duel partner_b confirmation timeout (30s timer set in receive_accept)
execute as @a[tag=duel.partner_b,scores={ec.duel_inv_cd=..0}] unless score #duel_active ec.var matches 1 run function evercraft:duel/team/partner_timeout
# Active duel tick (boundary check, health monitoring, disconnect detection)
execute if score #duel_active ec.var matches 1 run function evercraft:duel/active/tick


# === H2H COMPETITION SYSTEM ===
# Trigger handler (accept type 1-6, decline -1)
execute as @a[scores={ec.h2h=1..}] run function evercraft:competition/h2h/trigger_handler
execute as @a[scores={ec.h2h=..-1}] run function evercraft:competition/h2h/trigger_handler
# Invite expiry
scoreboard players remove @a[scores={ec.h2h_inv_cd=1..}] ec.h2h_inv_cd 1
execute as @a[tag=h2h.pending_target,scores={ec.h2h_inv_cd=0}] run function evercraft:competition/h2h/timeout


# === PET DUEL SYSTEM ===
# Trigger handler (accept/decline)
execute as @a[scores={ec.pd=1..}] run function evercraft:pet_duel/trigger_handler
# Invite expiry
scoreboard players remove @a[scores={ec.pd_inv_cd=1..}] ec.pd_inv_cd 1
execute as @a[tag=pd.pending_target,scores={ec.pd_inv_cd=0}] run function evercraft:pet_duel/invite_timeout
# Pet duel cooldown decrement (per tick)
scoreboard players remove @a[scores={ec.pd_cd=1..}] ec.pd_cd 1

# ══════════ MODULE: WORLD-SYSTEMS ══════════
# === REAPER: Disconnect recovery — kill orphaned hunt/bandit mobs ===
execute as @a[tag=!ec.joined,scores={rp.hunt_active=1}] run scoreboard players set @s rp.hunt_active 0
execute as @a[tag=!ec.joined,scores={rp.band_active=1}] run scoreboard players set @s rp.band_active 0


# === WORLD BOSS SYSTEM ===
# OPT: Bossbar HP update every 3 ticks via daylight_counter (was per-tick — saves ~67% NBT reads)
# 0.15s bossbar delay is imperceptible; health_bar system already uses 2t interval
execute if score #wb_active ec.var matches 1 if score #daylight_counter ec.var matches 0 store result bossbar evercraft:world_boss value run data get entity @e[type=!player,tag=wb.boss,limit=1] Health 1


# === FORAGING BUSH SYSTEM ===
# Per-tick: detect bush right-clicks
# OPT: Existence gate — skip entity scan when no forage bushes exist
execute if entity @e[type=interaction,tag=ec.forage_click,limit=1] as @e[type=interaction,tag=ec.forage_click] if data entity @s interaction at @s run function evercraft:forage/on_click
# Per-tick: progress bar for active gathering (only when players are gathering)
execute as @a[scores={ec.fg_picking=1}] at @s run function evercraft:forage/progress_step


# === ORE NODE SYSTEM ===
# Per-tick: detect node right-clicks
# OPT: Existence gate — skip entity scan when no ore nodes exist
execute if entity @e[type=interaction,tag=ec.prospect_click,limit=1] as @e[type=interaction,tag=ec.prospect_click] if data entity @s interaction at @s run function evercraft:prospect/on_click
# Per-tick: progress bar for active mining (only when players are mining)
execute as @a[scores={ec.pr_picking=1}] at @s run function evercraft:prospect/progress_step