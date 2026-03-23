# Return weapon from buddy equipment storage to player
# @s = player
# Spawns item entity at player feet for pickup

execute at @s run summon item ~ ~ ~ {Tags:["ec.temp_return"],Item:{id:"minecraft:stone",count:1},PickupDelay:0}
data modify entity @e[tag=ec.temp_return,limit=1] Item set from storage evercraft:buddy temp_equip.weapon
