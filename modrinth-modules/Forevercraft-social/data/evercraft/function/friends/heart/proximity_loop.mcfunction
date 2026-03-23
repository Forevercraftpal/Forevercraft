# Friend Heart — Loop through friend list checking proximity
# Pops [0] from temp.heart_list, checks if that friend is nearby

# Exit if list empty
execute unless data storage evercraft:friends temp.heart_list[0] run return 0

# Get this friend's UUID3 and daily_heart flag
execute store result score #fr_check_uuid3 ec.temp run data get storage evercraft:friends temp.heart_list[0].uuid3
execute store result score #fr_check_daily ec.temp run data get storage evercraft:friends temp.heart_list[0].daily_heart

# Skip if heart already given today
execute if score #fr_check_daily ec.temp matches 1 run data remove storage evercraft:friends temp.heart_list[0]
execute if score #fr_check_daily ec.temp matches 1 run function evercraft:friends/heart/proximity_loop
execute if score #fr_check_daily ec.temp matches 1 run return 0

# Check if this friend is within 48 blocks
# Find the player with matching UUID3 nearby
scoreboard players set #fr_found_nearby ec.temp 0
execute as @a[distance=1..48,gamemode=!spectator] store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a[distance=1..48,gamemode=!spectator] if score @s ec.temp_uuid3 = #fr_check_uuid3 ec.temp run scoreboard players set #fr_found_nearby ec.temp 1

# If friend is nearby, grant heart
execute if score #fr_found_nearby ec.temp matches 1 run function evercraft:friends/heart/grant

# Pop and recurse
data remove storage evercraft:friends temp.heart_list[0]
scoreboard players add #fr_heart_idx ec.temp 1
function evercraft:friends/heart/proximity_loop
