# Found the chest block - check if in structure and if player has looted it
# Position is already aligned to block center (from raycast align xyz positioned ~0.5 ~0.5 ~0.5)
scoreboard players set @s cf.temp 0

# Check for CustomName — any chest from our crate systems or player-renamed has one.
# Vanilla structure chests never have CustomName before we process them.
execute if data block ~ ~ ~ CustomName run return 0

# Check for cf.player_placed marker within 1 block - if found, this is a player chest, skip it
execute if entity @e[type=marker,tag=cf.player_placed,distance=..1] run return 0

# Check for crate animation entity within 1 block - if found, this is a system crate, skip it
execute if entity @e[type=armor_stand,tag=ec.crate_anim,distance=..1] run return 0

# Check if this chest has a LootTable tag (indicates unopened structure chest)
# NOTE: LootTable is consumed by Minecraft when the chest is first opened, so the
# advancement reward function may run AFTER it's already removed. We track this
# for the refresh system but do NOT gate on it — the looted marker system in
# spawn_loot.mcfunction prevents double-triggering instead.
scoreboard players set @s cf.has_loottable 0
execute if data block ~ ~ ~ LootTable run scoreboard players set @s cf.has_loottable 1

# Get block coordinates via temp marker
summon marker ~ ~ ~ {Tags:["cf.temp_marker"]}
execute store result score @s cf.pos_x run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[0]
execute store result score @s cf.pos_y run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[1]
execute store result score @s cf.pos_z run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[2]
kill @e[type=marker,tag=cf.temp_marker]

# Force-convert any expired looted markers before the refresh check
# tick_refresh runs every 10 seconds, so a marker may have expired but not yet converted
# when the player opens the chest (especially after traveling to an unloaded chunk)
execute as @e[type=marker,tag=cf.looted_marker,distance=..1] run function evercraft:structures/storage/tick_single_marker

# For refreshed chests: verify UUID match and load struct_id from refresh marker
execute if score @s cf.has_loottable matches 0 if entity @e[type=marker,tag=cf.refresh_marker,distance=..1] run function evercraft:structures/storage/check_refresh

# Detect structure type and spawn loot (for both fresh and refreshed chests)
# check_structure uses predicates (location-based, not NBT-based) so it works
# regardless of LootTable state. The looted marker system prevents re-triggering.
execute positioned ~ ~ ~ run function evercraft:structures/interact/check_structure
