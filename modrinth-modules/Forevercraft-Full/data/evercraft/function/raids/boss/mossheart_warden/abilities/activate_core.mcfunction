# The Mossheart Warden — Activate Spawner Core
# Activates one inactive core

# Tag a random inactive core
execute as @e[tag=ec.rd_mw_core,tag=!ec.rd_mw_core_active,sort=random,limit=1] run tag @s add ec.rd_mw_core_active
scoreboard players add #rd_mw_cores_active ec.var 1

# VFX
execute as @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active,limit=1,sort=nearest] at @s run particle minecraft:flame ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute as @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active,limit=1,sort=nearest] at @s run playsound minecraft:block.respawn_anchor.charge master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"A spawner core activates! Destroy it to stop the mob flow!",color:"yellow"}]
