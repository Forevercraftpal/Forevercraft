# Lumber Arena — Build shell (macro)
# Floor at Y=299 (stone bricks), walls + ceiling enclosing 48x25x48

# Floor (48x1x48)
$execute positioned $(ax) 299 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks

# Walls (4 sides, Y=300-323)
# Split to stay under 32768 block limit
# North wall (X-axis, Z=0)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~47 ~11 ~ stone
$execute positioned $(ax) 312 $(az) run fill ~ ~ ~ ~47 ~11 ~ stone
# South wall (X-axis, Z=47)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~47 ~47 ~11 ~47 stone
$execute positioned $(ax) 312 $(az) run fill ~ ~ ~47 ~47 ~11 ~47 stone
# West wall (Z-axis, X=0)
$execute positioned $(ax) 300 $(az) run fill ~ ~ ~ ~ ~11 ~47 stone
$execute positioned $(ax) 312 $(az) run fill ~ ~ ~ ~ ~11 ~47 stone
# East wall (Z-axis, X=47)
$execute positioned $(ax) 300 $(az) run fill ~47 ~ ~ ~47 ~11 ~47 stone
$execute positioned $(ax) 312 $(az) run fill ~47 ~ ~ ~47 ~11 ~47 stone

# Ceiling at Y=324 (stone bricks)
$execute positioned $(ax) 324 $(az) run fill ~ ~ ~ ~47 ~ ~47 stone_bricks
