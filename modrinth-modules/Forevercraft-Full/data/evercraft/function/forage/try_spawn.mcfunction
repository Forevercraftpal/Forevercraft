# Foraging Bush: Attempt to spawn a bush near the player
# Run as player, at player position

# Cap: max 7 active bushes within 120 blocks
execute store result score #fg_count ec.temp if entity @e[type=marker,tag=ec.forage_data,distance=..120]
execute if score #fg_count ec.temp matches 7.. run return run function evercraft:forage/reset_timer

# Summon temp marker at player position
summon marker ~ ~ ~ {Tags:["ec.forage_temp","ec.spawn_temp"]}

# Spread to random ground position within 80 blocks (min 15)
execute store success score #fg_spread ec.temp run spreadplayers ~ ~ 15 80 false @e[type=marker,tag=ec.forage_temp,limit=1]

# If spread failed (no valid position), clean up and skip
execute if score #fg_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.forage_temp]
execute if score #fg_spread ec.temp matches 0 run return run function evercraft:forage/reset_timer

# Y-level adjustment: spawn near player's depth when underground
execute store result score #surface_y ec.temp run data get entity @e[type=marker,tag=ec.forage_temp,limit=1] Pos[1]
execute store result score #player_y ec.temp run data get entity @s Pos[1]
scoreboard players operation #player_y ec.temp -= #surface_y ec.temp
execute if score #player_y ec.temp matches ..-5 run function evercraft:common/try_adjust_y
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run kill @e[type=marker,tag=ec.forage_temp]
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run return run function evercraft:forage/reset_timer
tag @e[type=marker,tag=ec.forage_temp] remove ec.spawn_temp

# Place bush at the spread position
execute at @e[type=marker,tag=ec.forage_temp,limit=1] run function evercraft:forage/place_bush

# Group spawning: chance for cluster of 2-3 bushes
# 50% single, 35% double, 15% triple
execute store result score #fg_cluster ec.temp run random value 1..20
execute if score #fg_cluster ec.temp matches 11.. at @e[type=marker,tag=ec.forage_temp,limit=1] run function evercraft:forage/spawn_cluster_node
execute if score #fg_cluster ec.temp matches 18.. at @e[type=marker,tag=ec.forage_temp,limit=1] run function evercraft:forage/spawn_cluster_node

# Clean up temp marker
kill @e[type=marker,tag=ec.forage_temp]

# Reset timer
function evercraft:forage/reset_timer
