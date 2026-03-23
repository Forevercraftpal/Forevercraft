# Buddy Designation — Start 40-Tick Window
# @s = player who sneak+clicked near a tamed mob
# Sets designation timer and stores target mob UUID

# Store target mob UUID in player scoreboards
scoreboard players operation @s ec.bd_des_uuid0 = #bd_mob_uuid0 ec.temp
scoreboard players operation @s ec.bd_des_uuid1 = #bd_mob_uuid1 ec.temp

# Start 40-tick countdown (2 ticks at 20t schedule = checked ~2 times)
scoreboard players set @s ec.bd_designating 40

# Tag the target entity for visual feedback
execute as @e[type=#evercraft:tameable_companions,tag=ec.tame_protected,distance=..10,limit=1,sort=nearest] if score @s ec.temp = #bd_mob_uuid0 ec.temp run tag @s add ec.bd_designating_target

# Notify player
tellraw @s [{text:"[Buddy] ",color:"#FFD700"},{text:"Sneak + use the catalogue again to bond with this animal!",color:"yellow"}]
