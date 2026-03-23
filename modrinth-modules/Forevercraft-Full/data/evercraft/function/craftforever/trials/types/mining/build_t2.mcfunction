# Mining T2: Mine 32 iron ore — scatter iron ore veins throughout the stone
# Need ~40 iron ore blocks (buffer for player to find 32)

# Vein 1 (NW quadrant)
$execute positioned $(ax) 302 $(az) run fill ~3 ~ ~3 ~6 ~1 ~5 iron_ore
# Vein 2
$execute positioned $(ax) 305 $(az) run fill ~10 ~ ~8 ~12 ~1 ~10 iron_ore
# Vein 3
$execute positioned $(ax) 308 $(az) run fill ~5 ~ ~15 ~8 ~1 ~17 iron_ore
# Vein 4 (NE quadrant)
$execute positioned $(ax) 301 $(az) run fill ~30 ~ ~5 ~33 ~1 ~7 iron_ore
# Vein 5
$execute positioned $(ax) 304 $(az) run fill ~35 ~ ~12 ~38 ~1 ~14 iron_ore
# Vein 6 (SE quadrant)
$execute positioned $(ax) 310 $(az) run fill ~30 ~ ~30 ~33 ~1 ~32 iron_ore
# Vein 7
$execute positioned $(ax) 307 $(az) run fill ~38 ~ ~38 ~41 ~1 ~40 iron_ore
# Vein 8 (SW quadrant)
$execute positioned $(ax) 312 $(az) run fill ~5 ~ ~35 ~8 ~1 ~37 iron_ore
# Vein 9
$execute positioned $(ax) 315 $(az) run fill ~15 ~ ~40 ~18 ~1 ~42 iron_ore
# Vein 10 (deep)
$execute positioned $(ax) 318 $(az) run fill ~20 ~ ~20 ~23 ~1 ~22 iron_ore

# Add some variety
$execute positioned $(ax) 302 $(az) run fill ~20 ~ ~20 ~25 ~3 ~25 granite
$execute positioned $(ax) 306 $(az) run fill ~10 ~ ~30 ~15 ~2 ~35 diorite
