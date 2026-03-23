# The Leviathan — Laser Beam Attack
# Targets random participant, 2-second charge warning, then 15 damage

# Pick a target
execute as @a[tag=ec.rd_participant,sort=random,limit=1] run tag @s add ec.rd_lv_target

# Warning particles + sound (beam windup visual)
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run particle minecraft:electric_spark ~ ~1 ~ 0.3 0.3 0.3 0.1 10
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.guardian.attack master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

# Announce target
tellraw @a[tag=ec.rd_lv_target] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"The Leviathan locks its gaze on you!",color:"aqua",bold:true}]

# Schedule the beam impact 2 seconds later
schedule function evercraft:raids/boss/leviathan/abilities/laser_impact 40t
