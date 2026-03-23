# Update party size after a member leaves (macro)
# Arg: pid

# Recount party size
$execute as @a[scores={ec.party_id=$(pid)}] store result score @s ec.party_size if entity @a[scores={ec.party_id=$(pid)}]

# If only 1 member left, auto-disband
$execute store result score #leave_ct ec.temp if entity @a[scores={ec.party_id=$(pid)}]
# Return color to pool before auto-disband cleanup
$execute if score #leave_ct ec.temp matches ..1 as @a[scores={ec.party_id=$(pid),ec.pty_clr=1..},limit=1] run function evercraft:party/color/return_from_self
# Notify before cleanup (cleanup resets party IDs, so tellraw must come first)
$execute if score #leave_ct ec.temp matches ..1 run tellraw @a[scores={ec.party_id=$(pid)}] {text:"[Party] Party has been disbanded (not enough members).",color:"gray"}
$execute if score #leave_ct ec.temp matches ..1 as @a[scores={ec.party_id=$(pid)}] run function evercraft:party/cleanup_player
