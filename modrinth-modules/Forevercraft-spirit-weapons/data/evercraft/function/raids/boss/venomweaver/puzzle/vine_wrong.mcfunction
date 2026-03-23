# The Venomweaver — Wrong Vine!
# Room-wide poison nova: 6 damage + Poison II to everyone

# Clear the glow color
scoreboard players set #rd_vw_glow_color ec.var 0

# Poison nova to all participants
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..50] run damage @s 6 minecraft:mob_attack by @p[sort=nearest,limit=1]
effect give @a[tag=ec.rd_participant] poison 5 1

# VFX: poison explosion
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_slime ~ ~1 ~ 8 3 8 0.2 100
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.generic.explode master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.6
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.spider.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"WRONG VINE! Poison nova unleashed!",color:"dark_red",bold:true}]
