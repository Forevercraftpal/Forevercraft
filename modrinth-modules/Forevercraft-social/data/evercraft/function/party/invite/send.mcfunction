# Send Party Invite to a player (macro)
# Arg: pid (inviting party's ID)
# Run as the invited player

# Mark as having a pending invite
scoreboard players set @s ec.party_inv 1
$scoreboard players set @s ec.party_inv_from $(pid)
scoreboard players set @s ec.party_inv_cd 1200

# Calculate accept trigger value (10 + party_id)
$scoreboard players set #inv_accept ec.temp $(pid)
scoreboard players add #inv_accept ec.temp 10
execute store result storage evercraft:party temp.accept int 1 run scoreboard players get #inv_accept ec.temp

# Show invite with clickable accept/decline
function evercraft:party/invite/show_invite with storage evercraft:party temp
