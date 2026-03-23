# Silkgrasp Mastery — "Gossamer Wave" (60s CD)
# AoE shear all nearby sheep + mooshrooms + item magnet burst

scoreboard players set @s ec.st_cd 1200

title @s actionbar [{"text":"Gossamer Wave","color":"light_purple","bold":true}]
playsound minecraft:entity.sheep.shear master @s ~ ~ ~ 1 0.8
playsound minecraft:entity.illusioner.cast_spell master @s ~ ~ ~ 0.5 1.5

# Shear all sheep within 10 blocks
execute as @e[type=sheep,distance=..10] at @s run data modify entity @s Sheared set value 1b
execute as @e[type=sheep,distance=..10] at @s run loot spawn ~ ~0.5 ~ loot minecraft:entities/sheep/white
execute as @e[type=sheep,distance=..10] at @s run loot spawn ~ ~0.5 ~ loot minecraft:entities/sheep/white
execute as @e[type=sheep,distance=..10] at @s run loot spawn ~ ~0.5 ~ loot minecraft:entities/sheep/white
execute as @e[type=sheep,distance=..10] at @s run particle minecraft:enchant ~ ~0.5 ~ 0.3 0.3 0.3 0.5 5
execute as @e[type=sheep,distance=..10] at @s run playsound minecraft:entity.sheep.shear neutral @a ~ ~ ~ 0.5 1.2

# Shear mooshrooms
execute as @e[type=mooshroom,distance=..10] at @s run loot spawn ~ ~0.5 ~ loot minecraft:shearing/mooshroom
execute as @e[type=mooshroom,distance=..10] at @s run playsound minecraft:entity.mooshroom.shear neutral @a ~ ~ ~ 0.5 1.0

# Mega item magnet burst — pull ALL items within 16 blocks
tp @e[type=item,distance=..16] @s

# VFX
particle minecraft:enchant ~ ~1 ~ 5 1 5 1 50
particle minecraft:end_rod ~ ~1 ~ 3 1 3 0.1 20

# Grant crafting affinity XP: 100 for mastery use
function evercraft:craft_affinity/grant {class_id:6, delta:100}
