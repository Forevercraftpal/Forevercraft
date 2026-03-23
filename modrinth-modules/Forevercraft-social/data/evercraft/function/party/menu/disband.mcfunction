# Disband Party — Leader dissolves the group
# Run as the party leader

# Must be a leader
execute unless score @s ec.party_role matches 1 run return run tellraw @s {text:"Only the party leader can disband.",color:"red"}

# Store party ID for announcement
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Return party color to pool before cleanup resets scores
function evercraft:party/color/return_from_self

# Announce to all party members
function evercraft:party/menu/disband_announce with storage evercraft:party temp

# Clean up all members
function evercraft:party/menu/disband_cleanup with storage evercraft:party temp
