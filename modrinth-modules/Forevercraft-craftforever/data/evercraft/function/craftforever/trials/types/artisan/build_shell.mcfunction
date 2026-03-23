# Artisan Arena — Build shell (macro)
# Stone box 48x25x48 at Y=299-324

# Floor (48x1x48 at Y=299)
$execute positioned $(ax) 299 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks

# Walls — fill interior with air first, then walls are just the shell edges
# Fill interior air (48x24x48 from Y=300 to Y=323)
# Split into chunks to stay under 32768 block limit (48x8x48 = 18432)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~47 ~7 ~47 air
$execute positioned $(ax) 308 $(az) run fill ~ ~ ~ ~47 ~7 ~47 air
$execute positioned $(ax) 316 $(az) run fill ~ ~ ~ ~47 ~7 ~47 air

# Walls (stone bricks shell — 1 block thick on all 4 sides)
# North wall (Z=az)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~47 ~23 ~ stone_bricks
# South wall (Z=az+47)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~47 ~47 ~23 ~47 stone_bricks
# West wall (X=ax)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~ ~23 ~47 stone_bricks
# East wall (X=ax+47)
$execute positioned $(ax) 300 $(az) run fill ~47 ~ ~ ~47 ~23 ~47 stone_bricks

# Ceiling at Y=324 (stone bricks)
$execute positioned $(ax) 324 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks
