# Friend Heart — Loop: find matching friend entry, increment hearts, set daily flag
# Reads from temp.grant_list, writes to temp.grant_result

execute unless data storage evercraft:friends temp.grant_list[0] run return 0

# Check if this is the target friend
execute store result score #fr_grant_cur ec.temp run data get storage evercraft:friends temp.grant_list[0].uuid3

# If match and not yet granted: increment hearts, set daily flag
execute if score #fr_grant_cur ec.temp = #fr_grant_target ec.temp if score #fr_grant_done ec.temp matches 0 run function evercraft:friends/heart/do_grant_entry
# If not match or already granted: copy as-is
execute unless score #fr_grant_cur ec.temp = #fr_grant_target ec.temp run data modify storage evercraft:friends temp.grant_result append from storage evercraft:friends temp.grant_list[0]
execute if score #fr_grant_done ec.temp matches 1 if score #fr_grant_cur ec.temp = #fr_grant_target ec.temp run data modify storage evercraft:friends temp.grant_result append from storage evercraft:friends temp.grant_entry_updated

# Pop and recurse
data remove storage evercraft:friends temp.grant_list[0]
function evercraft:friends/heart/do_grant_loop
