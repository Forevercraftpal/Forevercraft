# Friend Buff — Loop: count best friends and spouse nearby
# Reads from temp.heart_list

execute unless data storage evercraft:friends temp.heart_list[0] run return 0

# Get friend's UUID3 and hearts
execute store result score #fr_buf_uuid3 ec.temp run data get storage evercraft:friends temp.heart_list[0].uuid3
execute store result score #fr_buf_hearts ec.temp run data get storage evercraft:friends temp.heart_list[0].hearts

# Only check best friends (90+ hearts)
execute unless score #fr_buf_hearts ec.temp matches 90.. run data remove storage evercraft:friends temp.heart_list[0]
execute unless score #fr_buf_hearts ec.temp matches 90.. run function evercraft:friends/buff/count_loop
execute unless score #fr_buf_hearts ec.temp matches 90.. run return 0

# Check if this best friend is within 48 blocks
scoreboard players set #fr_buf_found ec.temp 0
execute as @a[distance=1..48,gamemode=!spectator] store result score @s ec.temp_uuid3 run data get entity @s UUID[3]
execute as @a[distance=1..48,gamemode=!spectator] if score @s ec.temp_uuid3 = #fr_buf_uuid3 ec.temp run scoreboard players set #fr_buf_found ec.temp 1

# If nearby, increment count
execute if score #fr_buf_found ec.temp matches 1 run scoreboard players add @s ec.fr_best_nearby 1

# Check if this is spouse
execute if score #fr_buf_found ec.temp matches 1 run function evercraft:friends/buff/check_spouse

# Pop and recurse
data remove storage evercraft:friends temp.heart_list[0]
function evercraft:friends/buff/count_loop
