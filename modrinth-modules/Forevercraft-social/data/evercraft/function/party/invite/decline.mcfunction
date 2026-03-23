# Decline Party Invite
# Run as the declining player

scoreboard players set @s ec.party_inv 0
scoreboard players set @s ec.party_inv_cd 0
scoreboard players set @s ec.party_inv_from 0
tellraw @s {text:"Invitation declined.",color:"gray"}
