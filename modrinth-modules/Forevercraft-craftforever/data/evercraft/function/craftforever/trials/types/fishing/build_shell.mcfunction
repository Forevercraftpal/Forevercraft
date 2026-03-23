# Fishing Trial — Shell (48x25x48 stone box at Y=299-324)
# Macro file — run with storage evercraft:trials

# Floor at Y=299
$execute positioned $(ax) 299 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks

# Walls (stone, filled in layers of 8 for fill limit)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone
$execute positioned $(ax) 308 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone
$execute positioned $(ax) 316 $(az) run fill ~ ~ ~ ~47 ~7 ~47 stone

# Ceiling at Y=324
$execute positioned $(ax) 324 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks
