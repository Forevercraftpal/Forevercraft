# Friend Gift — Check if daily heart was given for this friend, grant if not
# Uses existing heart grant infrastructure
# #fr_check_uuid3 ec.temp = friend's UUID3 (the gift target)
# #fr_self_uuid3 ec.temp = sender's UUID3

# Load sender's friend list
function evercraft:friends/heart/load_friends_list with storage evercraft:friends temp

# Find the specific friend entry and check daily flag
function evercraft:friends/gift/find_friend_daily
