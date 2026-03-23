# Building T1: Fill a Pit — 8x8 pit in the floor, 1 block deep
# Player places 64 blocks to fill it

# Carve an 8x8x1 pit in the floor at Y=299
$execute positioned $(ax) 299 $(az) run fill ~20 ~ ~20 ~27 ~ ~27 air
