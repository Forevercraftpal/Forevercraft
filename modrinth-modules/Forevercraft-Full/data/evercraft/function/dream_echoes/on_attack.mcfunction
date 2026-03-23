# Dream Echo — Attack Handler (left-click/break)
# Run as the interaction entity, at its position
# Removes the echo if attacker is holding shears

# Clear attack response
data remove entity @s attack

# Only remove if attacker is holding shears
execute if items entity @p[distance=..5] weapon.mainhand minecraft:shears run function evercraft:dream_echoes/remove
