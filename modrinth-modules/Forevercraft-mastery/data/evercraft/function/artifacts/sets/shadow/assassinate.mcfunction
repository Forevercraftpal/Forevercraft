# Shadow - Assassinate Ability
# Teleport behind nearest enemy and deal massive damage

# Find nearest enemy and mark them
tag @e[type=#evercraft:hostile,distance=..15,limit=1,sort=nearest] add shadow_target

# Check if we found a target
execute unless entity @e[type=#evercraft:hostile,tag=shadow_target] run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No target found!",color:"red"}]
execute unless entity @e[type=#evercraft:hostile,tag=shadow_target] run return 0

# Sound and particles at origin
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1.5
particle ash ~ ~1 ~ 0.5 1 0.5 0.05 30 force

# Teleport behind target
execute at @e[type=#evercraft:hostile,tag=shadow_target,limit=1] run tp @s ~ ~ ~-1

# Sound and particles at destination
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 0.5 1.2
particle ash ~ ~1 ~ 0.3 0.5 0.3 0.05 20 force

# Deal massive backstab damage to target
execute as @e[type=#evercraft:hostile,tag=shadow_target,limit=1] at @s run function evercraft:artifacts/sets/shadow/backstab

# Remove target tag
tag @e[type=#evercraft:hostile,tag=shadow_target] remove shadow_target

# Gain brief invisibility after strike
effect give @s invisibility 3 0 false
effect give @s speed 5 2 false

tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Assassinate!",color:"dark_gray"}]
