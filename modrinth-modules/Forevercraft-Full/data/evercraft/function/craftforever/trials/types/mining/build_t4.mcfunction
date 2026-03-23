# Mining T4: Mine 10 each of 4 ore types (iron, gold, copper, lapis)
# Need ~50 total ore blocks across 4 types

# Mix terrain
$execute positioned $(ax) 300 $(az) run fill ~0 ~ ~0 ~47 ~3 ~47 deepslate replace stone
$execute positioned $(ax) 306 $(az) run fill ~10 ~ ~10 ~20 ~3 ~20 diorite

# Iron veins (15 blocks)
$execute positioned $(ax) 302 $(az) run fill ~3 ~ ~3 ~6 ~1 ~5 iron_ore
$execute positioned $(ax) 308 $(az) run fill ~35 ~ ~8 ~38 ~1 ~10 iron_ore
$execute positioned $(ax) 314 $(az) run fill ~20 ~ ~40 ~22 ~1 ~42 iron_ore

# Gold veins (15 blocks)
$execute positioned $(ax) 304 $(az) run fill ~30 ~ ~30 ~33 ~1 ~32 gold_ore
$execute positioned $(ax) 310 $(az) run fill ~5 ~ ~25 ~8 ~1 ~27 gold_ore

# Copper veins (15 blocks)
$execute positioned $(ax) 306 $(az) run fill ~40 ~ ~15 ~43 ~1 ~17 copper_ore
$execute positioned $(ax) 312 $(az) run fill ~10 ~ ~38 ~13 ~1 ~40 copper_ore

# Lapis veins (15 blocks)
$execute positioned $(ax) 300 $(az) run fill ~15 ~ ~10 ~17 ~1 ~12 lapis_ore
$execute positioned $(ax) 316 $(az) run fill ~30 ~ ~20 ~33 ~1 ~22 lapis_ore
