# Friend Gift — Loop through friend list to find target and check daily flag

execute unless data storage evercraft:friends temp.heart_list[0] run return 0

# Get this entry's UUID3
execute store result score #fr_fd_uuid3 ec.temp run data get storage evercraft:friends temp.heart_list[0].uuid3
execute store result score #fr_fd_daily ec.temp run data get storage evercraft:friends temp.heart_list[0].daily_heart

# If match and daily not given, grant heart
execute if score #fr_fd_uuid3 ec.temp = #fr_gift_target ec.temp if score #fr_fd_daily ec.temp matches 0 run function evercraft:friends/heart/grant
execute if score #fr_fd_uuid3 ec.temp = #fr_gift_target ec.temp run return 0

# Pop and recurse
data remove storage evercraft:friends temp.heart_list[0]
scoreboard players add #fr_heart_idx ec.temp 1
function evercraft:friends/gift/find_friend_daily
