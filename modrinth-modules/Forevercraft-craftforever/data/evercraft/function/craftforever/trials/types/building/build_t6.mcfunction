# Building T6: Tower — 384 blocks, vertical space
# Player builds upward

# Mark a 6x6 tower foundation with yellow wool
$execute positioned $(ax) 300 $(az) run fill ~21 ~ ~21 ~26 ~ ~26 yellow_wool

# Place vertical guide pillars at corners (red wool, 1 block at height markers)
$execute positioned $(ax) 305 $(az) run setblock ~21 ~ ~21 red_wool
$execute positioned $(ax) 310 $(az) run setblock ~21 ~ ~21 red_wool
$execute positioned $(ax) 315 $(az) run setblock ~21 ~ ~21 red_wool
$execute positioned $(ax) 320 $(az) run setblock ~21 ~ ~21 red_wool
