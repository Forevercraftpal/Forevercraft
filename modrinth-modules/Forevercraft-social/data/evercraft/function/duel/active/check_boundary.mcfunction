# Duel — Check Open World Boundary (runs as each duelist with mode=1)
# Check distance from duel.engage marker

# If further than 64 blocks from engage point, warn
execute unless entity @e[type=marker,tag=duel.engage,distance=0..64] run function evercraft:duel/active/out_of_bounds
