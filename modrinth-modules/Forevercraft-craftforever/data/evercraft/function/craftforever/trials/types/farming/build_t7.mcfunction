# T7: Nether wart on soul sand — harvest 32 nether wart

# Fill floor with soul sand
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 soul_sand

# Mature nether wart on top
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 nether_wart[age=3]
