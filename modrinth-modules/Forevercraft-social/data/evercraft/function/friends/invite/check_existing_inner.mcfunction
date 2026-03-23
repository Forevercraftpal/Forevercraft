# Friend Invite — Check friend list for target UUID3
# Macro args: self_uuid3, target_uuid3
# Copies friend list, iterates to find match

# Copy friend list to temp for iteration
$data modify storage evercraft:friends temp.check_list set from storage evercraft:friends "u$(self_uuid3)".friends

# Check each entry — use recursive pop
function evercraft:friends/invite/check_existing_loop
