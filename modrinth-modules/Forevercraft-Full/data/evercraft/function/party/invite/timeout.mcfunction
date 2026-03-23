# Invite Timeout — invitation expired
# Run as the invited player whose invite timed out

scoreboard players set @s ec.party_inv 0
scoreboard players set @s ec.party_inv_cd 0
scoreboard players set @s ec.party_inv_from 0
tellraw @s {text:"Party invitation expired.",color:"gray"}
