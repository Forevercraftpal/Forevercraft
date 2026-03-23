# T4: Mixed seedlings with limited bone meal — grow 32 crops
# 4 sections: wheat, carrots, potatoes, beetroot (all seedlings)

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

# Wheat seedlings (rows 1-2, ~z2 to ~z14)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 wheat[age=0]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 wheat[age=0]

# Carrot seedlings (row 3, ~z16 to ~z23)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 carrots[age=0]

# Potato seedlings (row 4, ~z25 to ~z32)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 potatoes[age=0]

# Beetroot seedlings (rows 5-6, ~z34 to ~z46)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 beetroots[age=0]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 beetroots[age=0]
