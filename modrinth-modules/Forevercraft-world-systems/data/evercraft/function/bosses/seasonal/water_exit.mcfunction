# World Boss — Exited Water
# Called as boss entity when boss leaves water
# Remove Dolphin's Grace, restore speed modifiers based on current phase

tag @s remove wb.in_water

# Remove Dolphin's Grace
effect clear @s dolphins_grace

# Restore phase speed modifiers based on current phase
# P2: +10% speed
execute if score #wb_phase ec.var matches 2.. run attribute @s movement_speed modifier add evercraft:boss/phase2 0.1 add_multiplied_base
# P3: +10% speed (cumulative)
execute if score #wb_phase ec.var matches 3.. run attribute @s movement_speed modifier add evercraft:boss/phase3 0.1 add_multiplied_base
# P4: +15% speed (cumulative)
execute if score #wb_phase ec.var matches 4 run attribute @s movement_speed modifier add evercraft:boss/phase4 0.15 add_multiplied_base
# Rage: +25% speed (cumulative)
execute if entity @s[tag=wb.enraged] run attribute @s movement_speed modifier add evercraft:boss/rage 0.25 add_multiplied_base
