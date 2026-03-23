# T1: Mature wheat field — harvest 64 wheat
# Farmland + water channels + mature wheat

# Fill floor with dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt

# Water channels (every 9 blocks)
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~6 ~46 ~ ~6 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~15 ~46 ~ ~15 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~24 ~46 ~ ~24 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~33 ~46 ~ ~33 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~42 ~46 ~ ~42 water

# Farmland between channels
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 farmland

# Mature wheat on top
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 wheat[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 wheat[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 wheat[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 wheat[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 wheat[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 wheat[age=7]
