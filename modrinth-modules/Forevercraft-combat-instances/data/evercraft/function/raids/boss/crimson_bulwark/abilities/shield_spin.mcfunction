# The Crimson Bulwark — Shield Spin
# 360 AoE: 6-block radius, 10 damage
# Followed by 40-tick vulnerability window

# AoE damage
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..6] run damage @s 10 minecraft:mob_attack by @p[sort=nearest,limit=1]

# VFX: spinning shield
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.9,0.1,0.1],scale:2.5} ~ ~1 ~ 6 0.5 6 0 60
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:sweep_attack ~ ~1 ~ 4 0.5 4 0 8
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.player.attack.sweep master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:item.shield.break master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

# Vulnerability window: Slowness V + Glowing for 40 ticks
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run effect give @s slowness 2 4 true
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] run effect give @s glowing 2 0 true

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Bulwark is exposed! Attack now!",color:"green",bold:true}]
