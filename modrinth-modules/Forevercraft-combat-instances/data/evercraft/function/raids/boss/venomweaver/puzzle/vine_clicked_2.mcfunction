# Venomweaver — Vine 2 (Blue) clicked
# Check if glow color = 2 (blue)

# Clear interaction
data remove entity @s interaction

# Correct: blue vine when boss glows blue
execute if score #rd_vw_glow_color ec.var matches 2 run function evercraft:raids/boss/venomweaver/puzzle/vine_correct

# Wrong color
execute unless score #rd_vw_glow_color ec.var matches 2 run function evercraft:raids/boss/venomweaver/puzzle/vine_wrong
