# Friend System — Filter loop: copy all entries except matching uuid3
# Reads from temp.filter_list, writes to temp.filter_result
# #fr_filter_uuid3 ec.temp = uuid3 to exclude

# Exit if list empty
execute unless data storage evercraft:friends temp.filter_list[0] run return 0

# Check if current entry matches the filter target
execute store result score #fr_cur_uuid3 ec.temp run data get storage evercraft:friends temp.filter_list[0].uuid3

# If NOT the one to remove, keep it
execute unless score #fr_cur_uuid3 ec.temp = #fr_filter_uuid3 ec.temp run data modify storage evercraft:friends temp.filter_result append from storage evercraft:friends temp.filter_list[0]

# Pop and recurse
data remove storage evercraft:friends temp.filter_list[0]
function evercraft:friends/filter_remove_loop
