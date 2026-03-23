# Spirit Artifact System — Per-Tick Processing
# Called from main tick.mcfunction, gated by existence check

# === COOLDOWN DECREMENTS ===
scoreboard players remove @a[scores={ec.sp_cd1=1..}] ec.sp_cd1 1
scoreboard players remove @a[scores={ec.sp_cd2=1..}] ec.sp_cd2 1
scoreboard players remove @a[scores={ec.sp_timer=1..}] ec.sp_timer 1

# === ITEM RESTORE (consume_item fires before removal — restore next tick) ===
execute as @a[tag=ec.sp_restore] at @s run function evercraft:spirit/restore_item
tag @a[tag=ec.sp_restore] remove ec.sp_restore

# === DISPATCH PER-WEAPON TICKS (only if that weapon is actively held) ===
# Each weapon has passive effects that need per-tick processing
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=1}] at @s run function evercraft:spirit/abilities/hollow_fangs/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=2}] at @s run function evercraft:spirit/abilities/voidpiercer/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=3}] at @s run function evercraft:spirit/abilities/firebrand/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=4}] at @s run function evercraft:spirit/abilities/zephyr_edge/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=5}] at @s run function evercraft:spirit/abilities/nite/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=6}] at @s run function evercraft:spirit/abilities/whispering_spear/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=7}] at @s run function evercraft:spirit/abilities/ashcrown_mace/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=8}] at @s run function evercraft:spirit/abilities/ellegaard_trident/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=9}] at @s run function evercraft:spirit/abilities/pharaoh_fist/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=10}] at @s run function evercraft:spirit/abilities/lifewoven_branch/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=11}] at @s run function evercraft:spirit/abilities/sabrewing/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=12}] at @s run function evercraft:spirit/abilities/dragonheart_sword/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=13}] at @s run function evercraft:spirit/abilities/bulwark_shield/tick
execute as @a[tag=ec.sp_active,scores={ec.sp_weapon=14}] at @s run function evercraft:spirit/abilities/royal_trident/tick

# === ORPHAN MARKER CLEANUP (global fallback) ===
# Kill markers whose owner is no longer active with the relevant weapon.
# Per-player cleanup in weapon tick functions handles normal cases;
# this catches orphans from disconnects, weapon swaps, etc.
execute unless entity @a[tag=ec.sp_active,scores={ec.sp_weapon=14,ec.sp_aegis_active=1..}] if entity @e[tag=ec.sp_aegis_marker] run kill @e[tag=ec.sp_aegis_marker]
execute unless entity @a[tag=ec.sp_active,scores={ec.sp_weapon=8}] if entity @e[tag=ec.sp_maelstrom_marker] run kill @e[tag=ec.sp_maelstrom_marker]
execute unless entity @a[tag=ec.sp_active,scores={ec.sp_weapon=10}] if entity @e[tag=ec.sp_sanctuary_marker] run kill @e[tag=ec.sp_sanctuary_marker]

# === PROGRESSION TRACKING (survival timer, damage taken, kill streak reset) ===
function evercraft:spirit/progression/track_tick

# === SOULBOUND: RESPAWN RESTORE ===
# Check if any player with death tags has respawned (alive = Health > 0)
execute as @a[tag=ec.sp_death_mainhand] at @s run function evercraft:spirit/soulbound/respawn_restore
execute as @a[tag=ec.sp_death_offhand] unless entity @s[tag=ec.sp_death_mainhand] at @s run function evercraft:spirit/soulbound/respawn_restore

# === SOULBOUND TRADE TRIGGER ===
execute as @a[scores={ec.sp_trade=1..}] at @s run function evercraft:spirit/soulbound/trade
scoreboard players enable @a[scores={ec.sp_trade=1..}] ec.sp_trade
scoreboard players set @a[scores={ec.sp_trade=1..}] ec.sp_trade 0

# === METAMORPHOSIS CHECK TRIGGER ===
execute as @a[scores={ec.sp_meta=1..},tag=ec.sp_active] at @s run function evercraft:spirit/metamorphosis/check
scoreboard players set @a[scores={ec.sp_meta=1..}] ec.sp_meta 0
# OPT: enable moved to on_join + spirit/detect (was per-tick for all sp_active players)

# === PROGRESS CHECK TRIGGER ===
execute as @a[scores={ec.sp_prog=1..},tag=ec.sp_active] at @s run function evercraft:spirit/progression/show_progress
scoreboard players set @a[scores={ec.sp_prog=1..}] ec.sp_prog 0
# OPT: enable moved to on_join + spirit/detect (was per-tick for all sp_active players)
