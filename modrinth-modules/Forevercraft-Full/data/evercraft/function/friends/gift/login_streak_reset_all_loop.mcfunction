# Friend Gift — Loop: reset all streaks and flags on each friend entry

execute unless data storage evercraft:friends temp.rsa_list[0] run return 0

# Copy entry, reset streak and flags
data modify storage evercraft:friends temp.rsa_entry set from storage evercraft:friends temp.rsa_list[0]
data modify storage evercraft:friends temp.rsa_entry.gift_streak set value 0
data modify storage evercraft:friends temp.rsa_entry.sent_gift_today set value 0b
data modify storage evercraft:friends temp.rsa_entry.daily_heart set value 0b

data modify storage evercraft:friends temp.rsa_result append from storage evercraft:friends temp.rsa_entry

# Pop and recurse
data remove storage evercraft:friends temp.rsa_list[0]
function evercraft:friends/gift/login_streak_reset_all_loop
