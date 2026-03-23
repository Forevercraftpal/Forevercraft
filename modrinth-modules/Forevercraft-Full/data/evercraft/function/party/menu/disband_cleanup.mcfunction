# Clean up all members of a disbanded party (macro)
# Arg: pid

$execute as @a[scores={ec.party_id=$(pid)}] run function evercraft:party/cleanup_player
