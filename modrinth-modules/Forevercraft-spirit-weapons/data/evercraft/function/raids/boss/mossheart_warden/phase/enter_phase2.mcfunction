# The Mossheart Warden — Enter Phase 2: The Siege
# All cores activate, boss gets faster

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"",color:"dark_green"},{text:"The Mossheart Warden",color:"green",bold:true},{text:" roars — moss creeps across the walls!",color:"gray",italic:true}]

# VFX
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run particle minecraft:happy_villager ~ ~1 ~ 5 2 5 0.1 80
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.iron_golem.hurt master @a[tag=ec.rd_participant] ~ ~ ~ 2.0 0.3

# Activate ALL remaining cores
execute as @e[tag=ec.rd_mw_core,tag=!ec.rd_mw_core_active] run tag @s add ec.rd_mw_core_active
execute store result score #rd_mw_cores_active ec.var if entity @e[tag=ec.rd_mw_core,tag=ec.rd_mw_core_active]

# Boss speed increase
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s movement_speed modifier add evercraft:rd_boss/phase2 0.4 add_multiplied_base
execute as @e[type=iron_golem,tag=ec.rd_boss,limit=1] run attribute @s attack_damage modifier add evercraft:rd_boss/phase2 0.3 add_multiplied_base

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"All spawner cores are now active! Destroy them!",color:"yellow",bold:true}]
