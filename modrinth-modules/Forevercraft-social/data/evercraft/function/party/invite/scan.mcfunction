# Invite Scan — Find nearby ungrouped players and send invites
# Run as the party leader, at their position

# Must be a leader
execute unless score @s ec.party_role matches 1 run return run tellraw @s {text:"Only the party leader can invite.",color:"red"}

# Check party isn't full
execute if score @s ec.party_size matches 4.. run return run tellraw @s {text:"Party is full (4/4).",color:"red"}

# Store party ID for the invite
execute store result storage evercraft:party temp.pid int 1 run scoreboard players get @s ec.party_id

# Find ungrouped players within 64 blocks
execute store result score #inv_count ec.temp if entity @a[scores={ec.party_id=0},distance=..64,gamemode=!spectator]

# Nobody nearby?
execute if score #inv_count ec.temp matches 0 run return run tellraw @s {text:"No ungrouped players within 64 blocks.",color:"yellow"}

# Send invite to each nearby ungrouped player
execute as @a[scores={ec.party_id=0},distance=..64,gamemode=!spectator] run function evercraft:party/invite/send with storage evercraft:party temp

tellraw @s [{text:"[Party] ",color:"gold"},{text:"Invitations sent to nearby players.",color:"green"}]
