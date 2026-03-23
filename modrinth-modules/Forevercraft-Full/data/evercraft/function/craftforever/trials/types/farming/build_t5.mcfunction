# T5: All 6 crop types as seedlings — grow all 6 unique types
# 6 sections: wheat, carrot, potato, beetroot, melon stem, pumpkin stem

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

# Wheat seedlings (row 1)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 wheat[age=0]

# Carrot seedlings (row 2)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 carrots[age=0]

# Potato seedlings (row 3)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 potatoes[age=0]

# Beetroot seedlings (row 4)
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 beetroots[age=0]

# Melon stems (row 5) — need dirt beside for melon growth
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 melon_stem[age=0]

# Pumpkin stems (row 6) — need dirt beside for pumpkin growth
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 pumpkin_stem[age=0]
