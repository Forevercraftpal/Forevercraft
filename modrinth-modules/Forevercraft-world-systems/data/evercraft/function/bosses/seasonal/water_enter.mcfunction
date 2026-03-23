# World Boss — Entered Water
# Called as boss entity when boss enters water
# Gains Dolphin's Grace, loses speed modifiers

tag @s add wb.in_water

# Remove all phase speed modifiers
attribute @s movement_speed modifier remove evercraft:boss/phase2
attribute @s movement_speed modifier remove evercraft:boss/phase3
attribute @s movement_speed modifier remove evercraft:boss/phase4
attribute @s movement_speed modifier remove evercraft:boss/rage

# Add Dolphin's Grace
effect give @s dolphins_grace 3 0 true

# VFX
particle minecraft:bubble_column_up ~ ~1 ~ 1 1 1 0.1 20
playsound minecraft:entity.dolphin.splash master @a ~ ~ ~ 1.0 0.8
