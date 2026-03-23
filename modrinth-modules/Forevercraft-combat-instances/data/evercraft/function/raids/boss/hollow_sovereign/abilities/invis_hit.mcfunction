# Hollow Sovereign — Hit While Invisible (called as boss entity when HurtTime:10s)
# Track hits — 3 hits breaks invisibility for 10 seconds

scoreboard players add #rd_hs_hits ec.var 1

# Feedback to attacker
playsound minecraft:block.sculk_sensor.break hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 1.0 1.2
particle minecraft:crit ~ ~1.5 ~ 0.3 0.3 0.3 0.1 10

# Hit counter feedback
execute if score #rd_hs_hits ec.var matches 1 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The veil flickers... (1/3)","color":"gray"}]
execute if score #rd_hs_hits ec.var matches 2 run tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_aqua"},{text:"Raid",color:"aqua",bold:true},{text:"] ",color:"dark_aqua"},{text:"The veil cracks... (2/3)","color":"yellow"}]

# On 3rd hit: break invisibility!
execute if score #rd_hs_hits ec.var matches 3.. run function evercraft:raids/boss/hollow_sovereign/abilities/break_invis
