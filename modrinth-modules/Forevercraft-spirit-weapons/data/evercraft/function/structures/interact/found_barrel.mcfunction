# Found a barrel block - skip if it's one of our loot barrels or player-placed
# Position is already aligned to block center
scoreboard players set @s cf.temp 0

# Check for CustomName — any barrel from our crate systems (mob/fishing/harvest/quest/achievement/
# mining/structure) has one. Vanilla structure barrels never have CustomName before we process them.
# This is permanent (unlike cf.loot_barrel/ec.crate_anim markers which expire), so it catches
# crate barrels that players pick up and re-place after temporary markers have despawned.
execute if data block ~ ~ ~ CustomName run return 0

# Check for cf.loot_barrel marker within 1 block - if found, this is our spawned barrel, skip it
execute if entity @e[type=marker,tag=cf.loot_barrel,distance=..1] run return 0

# Check for cf.player_placed marker within 1 block - if found, this is a player barrel, skip it
execute if entity @e[type=marker,tag=cf.player_placed,distance=..1] run return 0

# Check for crate animation entity within 1 block - if found, this is a fishing/harvest/mob/etc crate, skip it
execute if entity @e[type=armor_stand,tag=ec.crate_anim,distance=..1] run return 0

# NOTE: We no longer gate on LootTable NBT here. Minecraft removes the LootTable
# tag when the container is first opened, but the advancement reward function may
# run AFTER removal. The looted marker system in spawn_loot.mcfunction prevents
# double-triggering. Structure predicates determine if this is a valid structure chest.

# Track LootTable presence for reference (refresh system compatibility)
scoreboard players set @s cf.has_loottable 0
execute if data block ~ ~ ~ LootTable run scoreboard players set @s cf.has_loottable 1

# Get block coordinates via temp marker
summon marker ~ ~ ~ {Tags:["cf.temp_marker"]}
execute store result score @s cf.pos_x run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[0]
execute store result score @s cf.pos_y run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[1]
execute store result score @s cf.pos_z run data get entity @e[type=marker,tag=cf.temp_marker,limit=1,sort=nearest] Pos[2]
kill @e[type=marker,tag=cf.temp_marker]

# For refreshed barrels: verify UUID match and load struct_id from refresh marker
execute if score @s cf.has_loottable matches 0 if entity @e[type=marker,tag=cf.refresh_marker,distance=..1] run function evercraft:structures/storage/check_refresh

# Check structure and spawn loot if applicable
# check_structure uses location predicates, not NBT, so works regardless of LootTable state
execute positioned ~ ~ ~ run function evercraft:structures/interact/check_structure
