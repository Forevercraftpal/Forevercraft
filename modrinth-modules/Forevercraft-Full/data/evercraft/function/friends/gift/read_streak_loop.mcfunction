# Friend Gift — Loop: find target friend entry and read gift_streak
# #fr_gift_target ec.temp = UUID3 to find
# Output: #fr_gift_streak ec.temp

execute unless data storage evercraft:friends temp.rs_list[0] run return 0

execute store result score #fr_rs_uuid3 ec.temp run data get storage evercraft:friends temp.rs_list[0].uuid3

# If match: read streak value
execute if score #fr_rs_uuid3 ec.temp = #fr_gift_target ec.temp if data storage evercraft:friends temp.rs_list[0].gift_streak store result score #fr_gift_streak ec.temp run data get storage evercraft:friends temp.rs_list[0].gift_streak
execute if score #fr_rs_uuid3 ec.temp = #fr_gift_target ec.temp run return 0

# Pop and recurse
data remove storage evercraft:friends temp.rs_list[0]
function evercraft:friends/gift/read_streak_loop
