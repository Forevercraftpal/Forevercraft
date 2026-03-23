# The Deepcrawler — Ground Slam
# AoE attack: 6-block radius, 12 damage

execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..6] run damage @s 12 minecraft:mob_attack by @p[sort=nearest,limit=1]

# VFX: ground impact
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:explosion ~ ~0.5 ~ 3 0.5 3 0.5 8
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.5,0.4,0.3],scale:2.5} ~ ~0.5 ~ 6 0.5 6 0 60
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.warden.sonic_boom master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.5
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:block.anvil.land master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_gray"},{text:"Raid",color:"gray",bold:true},{text:"] ",color:"dark_gray"},{text:"The Deepcrawler SLAMS the ground!",color:"red",bold:true}]
