# Biome Node: Attempt to spawn a biome-specific node near the player
# Run as player, at player position

# Cap: max 3 active biome nodes within 100 blocks
execute store result score #cf_count ec.temp if entity @e[type=marker,tag=ec.cf_node_data,distance=..100]
execute if score #cf_count ec.temp matches 3.. run return 0

# Check what biome we're in at player position
function evercraft:craftforever/nodes/check_biome

# No valid biome = no node
execute if score #cf_biome_id ec.temp matches 0 run return 0

# --- Rarity roll ---
# Determine rarity threshold based on biome ID
# Uncommon (IDs 4,14): 10% = roll 1-10 out of 100
# Rare (IDs 1,2,5,10,12,13,15): 5% = roll 1-5 out of 100
# Ornate (IDs 6,7,9): 2% = roll 1-2 out of 100
# Exquisite (IDs 3,11): 1% = roll 1 out of 100
# Mythical (ID 8): 0.5% = roll 1 out of 200
scoreboard players set #cf_rarity_thresh ec.temp 0

# Uncommon nodes (Jungle=4, Swamp=14)
execute if score #cf_biome_id ec.temp matches 4 run scoreboard players set #cf_rarity_thresh ec.temp 10
execute if score #cf_biome_id ec.temp matches 14 run scoreboard players set #cf_rarity_thresh ec.temp 10

# Rare nodes (Frozen=1, Desert=2, Ocean=5, LushCaves=10, Badlands=12, DarkForest=13, Cherry=15)
execute if score #cf_biome_id ec.temp matches 1 run scoreboard players set #cf_rarity_thresh ec.temp 5
execute if score #cf_biome_id ec.temp matches 2 run scoreboard players set #cf_rarity_thresh ec.temp 5
execute if score #cf_biome_id ec.temp matches 5 run scoreboard players set #cf_rarity_thresh ec.temp 5
execute if score #cf_biome_id ec.temp matches 10 run scoreboard players set #cf_rarity_thresh ec.temp 5
execute if score #cf_biome_id ec.temp matches 12 run scoreboard players set #cf_rarity_thresh ec.temp 5
execute if score #cf_biome_id ec.temp matches 13 run scoreboard players set #cf_rarity_thresh ec.temp 5
execute if score #cf_biome_id ec.temp matches 15 run scoreboard players set #cf_rarity_thresh ec.temp 5

# Ornate nodes (Crimson=6, Warped=7, Mushroom=9)
execute if score #cf_biome_id ec.temp matches 6 run scoreboard players set #cf_rarity_thresh ec.temp 2
execute if score #cf_biome_id ec.temp matches 7 run scoreboard players set #cf_rarity_thresh ec.temp 2
execute if score #cf_biome_id ec.temp matches 9 run scoreboard players set #cf_rarity_thresh ec.temp 2

# Exquisite nodes (DeepDark=3, Mountain=11)
execute if score #cf_biome_id ec.temp matches 3 run scoreboard players set #cf_rarity_thresh ec.temp 1
execute if score #cf_biome_id ec.temp matches 11 run scoreboard players set #cf_rarity_thresh ec.temp 1

# Mythical node (End=8) — uses 200 range, check separately
execute if score #cf_biome_id ec.temp matches 8 run scoreboard players set #cf_rarity_thresh ec.temp -1

# Roll for non-Mythical (1-100)
execute unless score #cf_biome_id ec.temp matches 8 store result score #cf_rarity_roll ec.temp run random value 1..100
execute unless score #cf_biome_id ec.temp matches 8 unless score #cf_rarity_roll ec.temp <= #cf_rarity_thresh ec.temp run return 0

# Roll for Mythical End node (1-200, need 1)
execute if score #cf_biome_id ec.temp matches 8 store result score #cf_rarity_roll ec.temp run random value 1..200
execute if score #cf_biome_id ec.temp matches 8 unless score #cf_rarity_roll ec.temp matches 1 run return 0

# --- Rank check ---
# Store min rank for this biome node
scoreboard players set #cf_min_rank ec.temp 0
execute if score #cf_biome_id ec.temp matches 1 run scoreboard players set #cf_min_rank ec.temp 15
execute if score #cf_biome_id ec.temp matches 2 run scoreboard players set #cf_min_rank ec.temp 15
execute if score #cf_biome_id ec.temp matches 3 run scoreboard players set #cf_min_rank ec.temp 40
execute if score #cf_biome_id ec.temp matches 4 run scoreboard players set #cf_min_rank ec.temp 10
execute if score #cf_biome_id ec.temp matches 5 run scoreboard players set #cf_min_rank ec.temp 25
execute if score #cf_biome_id ec.temp matches 6 run scoreboard players set #cf_min_rank ec.temp 30
execute if score #cf_biome_id ec.temp matches 7 run scoreboard players set #cf_min_rank ec.temp 30
execute if score #cf_biome_id ec.temp matches 8 run scoreboard players set #cf_min_rank ec.temp 50
execute if score #cf_biome_id ec.temp matches 9 run scoreboard players set #cf_min_rank ec.temp 25
execute if score #cf_biome_id ec.temp matches 10 run scoreboard players set #cf_min_rank ec.temp 20
execute if score #cf_biome_id ec.temp matches 11 run scoreboard players set #cf_min_rank ec.temp 35
execute if score #cf_biome_id ec.temp matches 12 run scoreboard players set #cf_min_rank ec.temp 15
execute if score #cf_biome_id ec.temp matches 13 run scoreboard players set #cf_min_rank ec.temp 20
execute if score #cf_biome_id ec.temp matches 14 run scoreboard players set #cf_min_rank ec.temp 10
execute if score #cf_biome_id ec.temp matches 15 run scoreboard players set #cf_min_rank ec.temp 25

# Check rank: player rank must meet minimum (Spirit Pickaxe overrides)
execute unless items entity @s weapon.* *[custom_data~{spirit_pickaxe:true}] unless score @s ec.cf_rank >= #cf_min_rank ec.temp run return 0

# --- Position spread ---
# Summon temp marker at player position
summon marker ~ ~ ~ {Tags:["ec.cf_node_temp","ec.spawn_temp"]}

# Spread to random ground position within 64 blocks (min 15)
execute if predicate evercraft:in_nether store success score #cf_spread ec.temp run spreadplayers ~ ~ 15 64 under 128 false @e[type=marker,tag=ec.cf_node_temp,limit=1]
execute unless predicate evercraft:in_nether store success score #cf_spread ec.temp run spreadplayers ~ ~ 15 64 false @e[type=marker,tag=ec.cf_node_temp,limit=1]

# If spread failed, clean up
execute if score #cf_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.cf_node_temp]
execute if score #cf_spread ec.temp matches 0 run return 0

# Y-level adjustment for underground players
execute store result score #surface_y ec.temp run data get entity @e[type=marker,tag=ec.cf_node_temp,limit=1] Pos[1]
execute store result score #player_y ec.temp run data get entity @s Pos[1]
scoreboard players operation #player_y ec.temp -= #surface_y ec.temp
execute if score #player_y ec.temp matches ..-5 run function evercraft:common/try_adjust_y
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run kill @e[type=marker,tag=ec.cf_node_temp]
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run return 0
tag @e[type=marker,tag=ec.cf_node_temp] remove ec.spawn_temp

# Ocean floor adjustment: spreadplayers lands on water surface — scan down to seafloor
execute if score #cf_biome_id ec.temp matches 5 at @e[type=marker,tag=ec.cf_node_temp,limit=1] if block ~ ~ ~ minecraft:water run function evercraft:craftforever/nodes/scan_ocean_floor
execute if score #cf_biome_id ec.temp matches 5 if score #cf_ocean_ok ec.temp matches 0 run kill @e[type=marker,tag=ec.cf_node_temp]
execute if score #cf_biome_id ec.temp matches 5 if score #cf_ocean_ok ec.temp matches 0 run return 0

# Place the node at spread position (biome ID from player's position determines node type)
execute at @e[type=marker,tag=ec.cf_node_temp,limit=1] run function evercraft:craftforever/nodes/place_node

# Clean up temp marker
kill @e[type=marker,tag=ec.cf_node_temp]
