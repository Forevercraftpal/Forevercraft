# Friend Buff — Apply best friend and marriage luck modifiers
# @s = player with friends, at @s position
# Runs every 1s from friends/tick

# Remove existing modifiers first (will re-add if applicable)
attribute @s luck modifier remove evercraft:best_friend_buff
attribute @s luck modifier remove evercraft:marriage_buff

# Get self UUID3
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp

# Count best friends within 48 blocks
scoreboard players set @s ec.fr_best_nearby 0
scoreboard players set @s ec.fr_spouse_near 0

# Load friend list
function evercraft:friends/heart/load_friends_list with storage evercraft:friends temp

# Check each friend
function evercraft:friends/buff/count_loop

# Apply best friend buff: +0.5 luck per best friend nearby
execute if score @s ec.fr_best_nearby matches 1 run attribute @s luck modifier add evercraft:best_friend_buff 0.5 add_value
execute if score @s ec.fr_best_nearby matches 2 run attribute @s luck modifier add evercraft:best_friend_buff 1.0 add_value
execute if score @s ec.fr_best_nearby matches 3 run attribute @s luck modifier add evercraft:best_friend_buff 1.5 add_value
execute if score @s ec.fr_best_nearby matches 4 run attribute @s luck modifier add evercraft:best_friend_buff 2.0 add_value
execute if score @s ec.fr_best_nearby matches 5 run attribute @s luck modifier add evercraft:best_friend_buff 2.5 add_value
execute if score @s ec.fr_best_nearby matches 6 run attribute @s luck modifier add evercraft:best_friend_buff 3.0 add_value
execute if score @s ec.fr_best_nearby matches 7 run attribute @s luck modifier add evercraft:best_friend_buff 3.5 add_value
execute if score @s ec.fr_best_nearby matches 8 run attribute @s luck modifier add evercraft:best_friend_buff 4.0 add_value
execute if score @s ec.fr_best_nearby matches 9 run attribute @s luck modifier add evercraft:best_friend_buff 4.5 add_value
execute if score @s ec.fr_best_nearby matches 10.. run attribute @s luck modifier add evercraft:best_friend_buff 5.0 add_value

# Apply marriage buff: +1.0 luck if spouse is nearby
execute if score @s ec.fr_spouse_near matches 1 run attribute @s luck modifier add evercraft:marriage_buff 1.0 add_value
