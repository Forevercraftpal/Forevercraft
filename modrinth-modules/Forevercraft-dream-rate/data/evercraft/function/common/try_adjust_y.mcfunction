# Adjust spawn marker Y to player level and find valid ground
# Run as: player, at: player
# Prereq: ec.spawn_temp tagged marker exists
# Sets: #scan_ok ec.temp (1 = success, 0 = failure)
# Sets: ref_y in evercraft:temp storage

# Store player's absolute Y for reference
execute store result storage evercraft:temp ref_y int 1 run data get entity @s Pos[1]

# Move marker to player's Y level (keeps spread XZ)
execute as @e[type=marker,tag=ec.spawn_temp,limit=1] at @s run function evercraft:common/set_ref_y with storage evercraft:temp

# Scan downward for valid ground (50 block range)
scoreboard players set #scan_depth ec.temp 50
execute as @e[type=marker,tag=ec.spawn_temp,limit=1] at @s store success score #scan_ok ec.temp run function evercraft:common/scan_down

# If down failed, reset marker to player Y and try scanning up (30 block range)
execute if score #scan_ok ec.temp matches 0 as @e[type=marker,tag=ec.spawn_temp,limit=1] at @s run function evercraft:common/set_ref_y with storage evercraft:temp
execute if score #scan_ok ec.temp matches 0 run scoreboard players set #scan_depth ec.temp 30
execute if score #scan_ok ec.temp matches 0 as @e[type=marker,tag=ec.spawn_temp,limit=1] at @s store success score #scan_ok ec.temp run function evercraft:common/scan_up
