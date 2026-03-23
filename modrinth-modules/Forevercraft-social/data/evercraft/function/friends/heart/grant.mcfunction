# Friend Heart — Grant a heart to the current friend pair
# @s = player gaining the heart
# #fr_check_uuid3 ec.temp = friend's UUID3
# #fr_heart_idx ec.temp = index in friend list
# #fr_self_uuid3 ec.temp = self UUID3

# Store index and both UUID3s for macro
execute store result storage evercraft:friends temp.heart_idx int 1 run scoreboard players get #fr_heart_idx ec.temp
execute store result storage evercraft:friends temp.friend_uuid3 int 1 run scoreboard players get #fr_check_uuid3 ec.temp

# Increment heart count in self's storage and mark daily
function evercraft:friends/heart/do_grant with storage evercraft:friends temp

# Check for level-up
execute store result score #fr_hearts ec.temp run data get storage evercraft:friends temp.new_hearts
function evercraft:friends/get_level_name

# Get previous heart count to check if level changed
scoreboard players operation #fr_prev_hearts ec.temp = #fr_hearts ec.temp
scoreboard players remove #fr_prev_hearts ec.temp 1
scoreboard players set #fr_prev_level ec.temp 0
execute if score #fr_prev_hearts ec.temp matches 7.. run scoreboard players set #fr_prev_level ec.temp 1
execute if score #fr_prev_hearts ec.temp matches 30.. run scoreboard players set #fr_prev_level ec.temp 2
execute if score #fr_prev_hearts ec.temp matches 60.. run scoreboard players set #fr_prev_level ec.temp 3
execute if score #fr_prev_hearts ec.temp matches 90.. run scoreboard players set #fr_prev_level ec.temp 4

# Notify if leveled up
execute unless score #fr_level ec.temp = #fr_prev_level ec.temp run function evercraft:friends/heart/level_up_notify

# Show heart gain message (subtle)
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"+1 ",color:"red"},{text:"heart with a friend!",color:"light_purple"}]
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.3 1.8
