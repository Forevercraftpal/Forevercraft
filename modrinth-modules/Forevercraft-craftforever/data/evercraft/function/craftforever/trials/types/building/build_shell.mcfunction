# Building Arena — Build shell (macro)
# Stone box 48x25x48 at Y=299-324
# Floor at Y=299, walls Y=300-323, ceiling at Y=324
# Interior cleared to air for building space

# Floor (48x1x48)
$execute positioned $(ax) 299 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks

# Walls — fill entire volume with stone first, then hollow interior
# Fill outer shell (48x25x48 from Y=300 to Y=323)
# Split into chunks to stay under 32768 block limit (48x8x48 = 18432)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone
$execute positioned $(ax) 308 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone
$execute positioned $(ax) 316 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone

# Ceiling at Y=324 (stone bricks)
$execute positioned $(ax) 324 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks

# Hollow out interior (leave 1-block thick walls)
# Interior: 46x23x46 from Y=300 to Y=323, offset +1 from edges
# Split into chunks (46x8x46 = 16928)
$execute positioned $(ax) 300 $(az) run fill ~1 ~ ~1 ~46 ~7 ~46 air
$execute positioned $(ax) 308 $(az) run fill ~1 ~ ~1 ~46 ~7 ~46 air
$execute positioned $(ax) 316 $(az) run fill ~1 ~ ~1 ~46 ~7 ~46 air
