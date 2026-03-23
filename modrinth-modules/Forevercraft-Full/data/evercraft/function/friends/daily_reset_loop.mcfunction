# Friend System — Loop: reset daily_heart flag on each entry

execute unless data storage evercraft:friends temp.reset_list[0] run return 0

# Copy entry, reset daily flags, append to result
data modify storage evercraft:friends temp.reset_entry set from storage evercraft:friends temp.reset_list[0]
data modify storage evercraft:friends temp.reset_entry.daily_heart set value 0b
data modify storage evercraft:friends temp.reset_entry.sent_gift_today set value 0b

data modify storage evercraft:friends temp.reset_result append from storage evercraft:friends temp.reset_entry

# Pop and recurse
data remove storage evercraft:friends temp.reset_list[0]
function evercraft:friends/daily_reset_loop
