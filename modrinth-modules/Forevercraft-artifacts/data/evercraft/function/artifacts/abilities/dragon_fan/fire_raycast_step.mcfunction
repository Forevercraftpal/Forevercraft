# Fire Raycast Step - Precision fire laser beam
# Steps forward 0.05 blocks per iteration, 6000 steps = 300 block range

# Entity check - detect entities in tiny bounding box at ray position
execute if score #df_hit ec.var matches 0 positioned ~-0.05 ~-0.05 ~-0.05 as @e[type=!#evercraft:treasure/non_entity,tag=!ec.dragon_fire,dx=0,sort=nearest] run function evercraft:artifacts/abilities/dragon_fan/fire_check_hit

# Fire particle beam
particle flame ~ ~ ~ 0 0 0 0 1 force

# Block check - stop on solid blocks
execute if score #df_hit ec.var matches 0 unless block ~ ~ ~ #minecraft:replaceable run function evercraft:artifacts/abilities/dragon_fan/fire_hit_block with storage evercraft:treasure/write data

# Increment distance
scoreboard players add #df_dist ec.var 1

# Continue if no hit and under max range (6000 steps = 300 blocks)
execute if score #df_hit ec.var matches 0 if score #df_dist ec.var matches ..6000 positioned ^ ^ ^0.05 run function evercraft:artifacts/abilities/dragon_fan/fire_raycast_step
