# Accept failed — party no longer exists
scoreboard players set @s ec.party_id 0
scoreboard players set @s ec.party_role 0
scoreboard players set @s ec.party_inv 0
scoreboard players set @s ec.party_inv_cd 0
scoreboard players set @s ec.party_inv_from 0
tellraw @s {text:"That party no longer exists.",color:"red"}
