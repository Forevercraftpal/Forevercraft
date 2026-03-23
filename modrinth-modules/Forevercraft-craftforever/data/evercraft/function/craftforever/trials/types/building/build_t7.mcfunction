# Building T7: Bridge a Gap — two platforms separated by a 10-block gap
# Player places 256 blocks to bridge them

# Left platform (12x1x20)
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~14 ~13 ~ ~33 stone_bricks

# Right platform (12x1x20)
$execute positioned $(ax) 300 $(az) run fill ~34 ~ ~14 ~45 ~ ~33 stone_bricks

# Remove floor in the gap between platforms (creates the void)
$execute positioned $(ax) 299 $(az) run fill ~14 ~ ~14 ~33 ~ ~33 air
