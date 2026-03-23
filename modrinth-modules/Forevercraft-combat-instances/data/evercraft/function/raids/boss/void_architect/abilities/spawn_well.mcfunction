# Void Architect — Spawn Gravity Well at random player position

# Spawn at a random participant's position
execute as @a[tag=ec.rd_participant,sort=random,limit=1] at @s run summon armor_stand ~ ~ ~ {Tags:["ec.rd_well","ec.rd_minion"],Small:1b,Invisible:1b,Invulnerable:1b,Marker:1b,NoGravity:1b,CustomName:{text:"Gravity Well",color:"dark_purple"},CustomNameVisible:1b}

# VFX
execute as @a[tag=ec.rd_participant,sort=random,limit=1] at @s run particle minecraft:reverse_portal ~ ~0.5 ~ 1 0.5 1 0.1 30
execute as @a[tag=ec.rd_participant,sort=random,limit=1] at @s run playsound minecraft:block.respawn_anchor.charge hostile @a[tag=ec.rd_participant] ~ ~ ~ 0.8 0.4

# Warning
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_purple"},{text:"Raid",color:"light_purple",bold:true},{text:"] ",color:"dark_purple"},{text:"A gravity well forms!","color":"dark_purple","italic":true}]

# Cap at 3 wells
execute store result score #rd_temp ec.var if entity @e[tag=ec.rd_well]
execute if score #rd_temp ec.var matches 4.. as @e[tag=ec.rd_well,limit=1,sort=random] run kill @s
