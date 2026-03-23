# T6: Massive mature mixed field — harvest 128 crop items total
# All crop types: wheat, carrots, potatoes, beetroot, melon, pumpkin

# Fill floor with dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt

# Water channels
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~6 ~46 ~ ~6 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~15 ~46 ~ ~15 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~24 ~46 ~ ~24 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~33 ~46 ~ ~33 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~42 ~46 ~ ~42 water

# All farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 farmland

# Mature wheat (row 1)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 wheat[age=7]

# Mature carrots (row 2)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 carrots[age=7]

# Mature potatoes (row 3)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 potatoes[age=7]

# Mature beetroot (row 4)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 beetroots[age=3]

# Mature melon stems + melons (row 5)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~34 ~46 ~ ~37 melon_stem[age=7]
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~38 ~46 ~ ~41 dirt
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~38 ~46 ~ ~41 melon

# Mature pumpkin stems + pumpkins (row 6)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~43 ~22 ~ ~46 pumpkin_stem[age=7]
$execute positioned $(ax) 300 $(az) run fill ~24 ~ ~43 ~46 ~ ~46 dirt
$execute positioned $(ax) 301 $(az) run fill ~24 ~ ~43 ~46 ~ ~46 pumpkin
