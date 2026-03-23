# Friend Invite — Iterate friend list to check for target UUID3
# Pops [0] from temp.check_list, checks uuid3 match, recurses

# Exit if already found or list empty
execute if score #fr_already ec.temp matches 1 run return 0
execute unless data storage evercraft:friends temp.check_list[0] run return 0

# Read current entry's uuid3 into score
execute store result score #fr_check_uuid3 ec.temp run data get storage evercraft:friends temp.check_list[0].uuid3
execute if score #fr_check_uuid3 ec.temp = #fr_target_uuid3 ec.temp run scoreboard players set #fr_already ec.temp 1

# Pop [0] and recurse
data remove storage evercraft:friends temp.check_list[0]
function evercraft:friends/invite/check_existing_loop
