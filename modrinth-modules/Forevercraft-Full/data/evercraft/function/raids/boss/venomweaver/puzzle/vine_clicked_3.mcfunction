# Venomweaver — Vine 3 (Green) clicked
# Check if glow color = 3 (green)

# Clear interaction
data remove entity @s interaction

# Correct: green vine when boss glows green
execute if score #rd_vw_glow_color ec.var matches 3 run function evercraft:raids/boss/venomweaver/puzzle/vine_correct

# Wrong color
execute unless score #rd_vw_glow_color ec.var matches 3 run function evercraft:raids/boss/venomweaver/puzzle/vine_wrong
