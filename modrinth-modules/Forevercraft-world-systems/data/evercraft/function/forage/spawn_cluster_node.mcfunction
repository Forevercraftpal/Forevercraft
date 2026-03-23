# Foraging Bush: Spawn an additional bush nearby (cluster spawning)
# Run at the position of the first spawned bush, as player

# Check cap — respect the 7-node limit
execute store result score #fg_count ec.temp if entity @e[type=marker,tag=ec.forage_data,distance=..120]
execute if score #fg_count ec.temp matches 7.. run return 0

# Spread a temp marker 3-8 blocks from this position
summon marker ~ ~ ~ {Tags:["ec.forage_cluster","ec.spawn_temp"]}
execute store success score #fg_spread ec.temp run spreadplayers ~ ~ 3 8 false @e[type=marker,tag=ec.forage_cluster,limit=1]

# If spread failed, clean up
execute if score #fg_spread ec.temp matches 0 run kill @e[type=marker,tag=ec.forage_cluster]
execute if score #fg_spread ec.temp matches 0 run return 0

# Y-level adjustment: keep cluster near player's depth when underground
execute store result score #surface_y ec.temp run data get entity @e[type=marker,tag=ec.forage_cluster,limit=1] Pos[1]
execute store result score #player_y ec.temp run data get entity @s Pos[1]
scoreboard players operation #player_y ec.temp -= #surface_y ec.temp
execute if score #player_y ec.temp matches ..-5 run function evercraft:common/try_adjust_y
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run kill @e[type=marker,tag=ec.forage_cluster]
execute if score #player_y ec.temp matches ..-5 if score #scan_ok ec.temp matches 0 run return 0

# Place bush at the cluster position
execute at @e[type=marker,tag=ec.forage_cluster,limit=1] run function evercraft:forage/place_bush
kill @e[type=marker,tag=ec.forage_cluster]
