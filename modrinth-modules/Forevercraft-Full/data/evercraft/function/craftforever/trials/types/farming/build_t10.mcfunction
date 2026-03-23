# T10: Enormous crop field — harvest 500 crops total
# Multi-level farm with all crop types

# === Level 1 (Y=300) — Main field ===
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt

# Water channels level 1
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~6 ~46 ~ ~6 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~15 ~46 ~ ~15 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~24 ~46 ~ ~24 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~33 ~46 ~ ~33 water
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~42 ~46 ~ ~42 water

# Farmland level 1
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 farmland
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 farmland

# Mature crops level 1
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 wheat[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 carrots[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 potatoes[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 beetroots[age=3]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 wheat[age=7]
$execute positioned $(ax) 301 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 carrots[age=7]

# === Level 2 (Y=305) — Second field ===
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt

# Water channels level 2
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~6 ~46 ~ ~6 water
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~15 ~46 ~ ~15 water
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~24 ~46 ~ ~24 water
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~33 ~46 ~ ~33 water
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~42 ~46 ~ ~42 water

# Farmland level 2
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 farmland
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 farmland
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 farmland
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 farmland
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 farmland
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 farmland

# Mature crops level 2
$execute positioned $(ax) 306 $(az) run fill ~2 ~ ~2 ~46 ~ ~5 potatoes[age=7]
$execute positioned $(ax) 306 $(az) run fill ~2 ~ ~7 ~46 ~ ~14 wheat[age=7]
$execute positioned $(ax) 306 $(az) run fill ~2 ~ ~16 ~46 ~ ~23 carrots[age=7]
$execute positioned $(ax) 306 $(az) run fill ~2 ~ ~25 ~46 ~ ~32 wheat[age=7]
$execute positioned $(ax) 306 $(az) run fill ~2 ~ ~34 ~46 ~ ~41 potatoes[age=7]
$execute positioned $(ax) 306 $(az) run fill ~2 ~ ~43 ~46 ~ ~46 beetroots[age=3]

# Stairs between levels
$execute positioned $(ax) 302 $(az) run fill ~2 ~ ~2 ~4 ~ ~4 stone_brick_stairs
$execute positioned $(ax) 303 $(az) run fill ~2 ~ ~2 ~4 ~ ~4 stone_brick_stairs
$execute positioned $(ax) 304 $(az) run fill ~2 ~ ~2 ~4 ~ ~4 stone_brick_stairs

# Extra light for level 2
$execute positioned $(ax) 318 $(az) run fill ~6 ~ ~6 ~6 ~ ~6 light[level=15]
$execute positioned $(ax) 318 $(az) run fill ~18 ~ ~18 ~18 ~ ~18 light[level=15]
$execute positioned $(ax) 318 $(az) run fill ~30 ~ ~30 ~30 ~ ~30 light[level=15]
$execute positioned $(ax) 318 $(az) run fill ~42 ~ ~42 ~42 ~ ~42 light[level=15]
