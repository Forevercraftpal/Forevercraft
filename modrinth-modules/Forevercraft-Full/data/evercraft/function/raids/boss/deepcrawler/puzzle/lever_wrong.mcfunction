# The Deepcrawler — Wrong Lever!
# Carts come from all 4 directions — devastating if players are on rails

# Reset sequence
scoreboard players set #rd_dc_lever_seq ec.var 0

# Damage all participants (10 damage)
execute as @a[tag=ec.rd_participant] run damage @s 10 minecraft:mob_attack

# VFX: chaotic cart impacts
execute at @e[tag=ec.rd_dc_lever1,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 0.5 1 0.3 3
execute at @e[tag=ec.rd_dc_lever2,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 0.5 1 0.3 3
execute at @e[tag=ec.rd_dc_lever3,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 0.5 1 0.3 3
execute at @e[tag=ec.rd_dc_lever4,limit=1] run particle minecraft:explosion ~ ~0.5 ~ 1 0.5 1 0.3 3
playsound minecraft:entity.minecart.riding master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.2
playsound minecraft:entity.generic.explode master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_gray"},{text:"Raid",color:"gray",bold:true},{text:"] ",color:"dark_gray"},{text:"WRONG SEQUENCE! Carts from all directions!",color:"dark_red",bold:true}]
