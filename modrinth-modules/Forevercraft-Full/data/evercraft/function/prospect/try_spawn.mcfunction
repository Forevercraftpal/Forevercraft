# Ore Node: Attempt to spawn an ore node near the player
# Run as player, at player position

# Cap: max 7 active ore nodes within 100 blocks
execute store result score #pr_count ec.temp if entity @e[type=marker,tag=ec.prospect_data,distance=..100]
execute if score #pr_count ec.temp matches 7.. run return run function evercraft:prospect/reset_timer

# Summon temp marker at player position
summon marker ~ ~ ~ {Tags:["ec.prospect_temp","ec.spawn_temp"]}

# Spread to random ground position within 80 blocks (min 15)
# Nether: cap at Y=128 to avoid bedrock roof placement
execute if predicate evercraft:in_nether store success score #pr_spread ec.temp run spreadplayers ~ ~ 15 80 under 128 false @e[type=marker,tag=ec.prospect_temp,limit=1]
execute unless predicate evercraft:in_nether store success score #pr_spread ec.temp run spreadplayers ~ ~ 15 80 false @e[type=marker,tag=ec.prospect_temp,limit=1]

# If spread failed (no valid position), clean up and skip
execute if score #pr_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.prospect_temp]
execute if score #pr_spread ec.temp matches 0 run return run function evercraft:prospect/reset_timer

# Y-level adjustment: spawn near player's depth when underground
execute store result score #surface_y ec.temp run data get entity @e[type=marker,tag=ec.prospect_temp,limit=1] Pos[1]
execute store result score #player_y ec.temp run data get entity @s Pos[1]
scoreboard players operation #player_y ec.temp -= #surface_y ec.temp
execute if score #player_y ec.temp matches ..-5 run function evercraft:common/try_adjust_y
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run kill @e[type=marker,tag=ec.prospect_temp]
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run return run function evercraft:prospect/reset_timer
tag @e[type=marker,tag=ec.prospect_temp] remove ec.spawn_temp

# Place node at the spread position
execute at @e[type=marker,tag=ec.prospect_temp,limit=1] run function evercraft:prospect/place_node

# Group spawning: chance for cluster of 2-3 nodes
# 50% single, 35% double, 15% triple
execute store result score #pr_cluster ec.temp run random value 1..20
execute if score #pr_cluster ec.temp matches 11.. at @e[type=marker,tag=ec.prospect_temp,limit=1] run function evercraft:prospect/spawn_cluster_node
execute if score #pr_cluster ec.temp matches 18.. at @e[type=marker,tag=ec.prospect_temp,limit=1] run function evercraft:prospect/spawn_cluster_node

# Clean up temp marker
kill @e[type=marker,tag=ec.prospect_temp]

# Reset timer
function evercraft:prospect/reset_timer
