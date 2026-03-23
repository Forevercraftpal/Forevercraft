# Chrono Shard — Check and kill heist cooldown marker if owned by resetting player
# @s = heist.cooldown marker entity

# Compare UUID[0] of marker's stored player_uuid with the clearing player
execute store result score #cs_cd_uuid ec.temp run data get entity @s data.player_uuid[0]
execute if score #cs_cd_uuid ec.temp = #cs_pl_uuid ec.temp run kill @s
