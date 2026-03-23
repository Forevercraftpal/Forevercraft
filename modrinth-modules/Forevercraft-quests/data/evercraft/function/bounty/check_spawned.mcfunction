# Bounty — Check spawned patron state
# OPT: Consolidates 4 redundant ec.bnt_spawned=1 checks into 1 gated call
# Run as: player with ec.bnt_spawned=1, at player

# Update distance display
function evercraft:bounty/update_distance

# Check if patron died (compare this player's owner ID against alive targets)
scoreboard players operation #bnt_check ec.var = @s ec.bnt_owner
scoreboard players set #bnt_alive ec.var 0
execute as @e[tag=ec.bounty_target] if score @s ec.bnt_owner = #bnt_check ec.var run scoreboard players set #bnt_alive ec.var 1
execute if score #bnt_alive ec.var matches 0 run function evercraft:bounty/on_kill
