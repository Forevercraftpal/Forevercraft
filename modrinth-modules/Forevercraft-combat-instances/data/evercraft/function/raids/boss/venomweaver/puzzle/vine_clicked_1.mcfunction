# Venomweaver — Vine 1 (Red) clicked
# Check if glow color = 1 (red)

# Clear interaction
data remove entity @s interaction

# Correct: red vine when boss glows red
execute if score #rd_vw_glow_color ec.var matches 1 run function evercraft:raids/boss/venomweaver/puzzle/vine_correct

# Wrong color
execute unless score #rd_vw_glow_color ec.var matches 1 run function evercraft:raids/boss/venomweaver/puzzle/vine_wrong
