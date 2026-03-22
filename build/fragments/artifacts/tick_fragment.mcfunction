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
