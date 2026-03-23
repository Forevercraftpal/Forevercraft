# Mining Arena — Build shell (macro)
# Floor at Y=299 (stone bricks), walls at edges, fill interior with stone

# Floor (48x1x48)
$execute positioned $(ax) 299 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks

# Fill interior with stone (48x24x48 from Y=300 to Y=323)
# Split into chunks to stay under 32768 block limit (48x8x48 = 18432)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone
$execute positioned $(ax) 308 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone
$execute positioned $(ax) 316 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone

# Ceiling at Y=324 (stone bricks)
$execute positioned $(ax) 324 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks

# Walls are formed by the fill — interior stone acts as walls since it's solid
# No need for separate walls since players mine INTO the stone
