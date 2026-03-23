# Mining T3: Mine 16 gold ore — scatter gold ore veins, harder to find
# Need ~22 gold ore blocks (slightly more than needed)

# Mix in deepslate for visual variety and difficulty
$execute positioned $(ax) 300 $(az) run fill ~0 ~ ~0 ~47 ~5 ~47 deepslate replace stone

# Gold veins (scattered, smaller)
$execute positioned $(ax) 302 $(az) run fill ~5 ~ ~8 ~7 ~1 ~9 gold_ore
$execute positioned $(ax) 305 $(az) run fill ~15 ~ ~3 ~17 ~ ~5 gold_ore
$execute positioned $(ax) 301 $(az) run fill ~35 ~ ~10 ~37 ~1 ~11 gold_ore
$execute positioned $(ax) 308 $(az) run fill ~40 ~ ~25 ~42 ~ ~27 gold_ore
$execute positioned $(ax) 303 $(az) run fill ~10 ~ ~35 ~12 ~1 ~36 gold_ore
$execute positioned $(ax) 310 $(az) run fill ~25 ~ ~40 ~27 ~ ~42 gold_ore
$execute positioned $(ax) 315 $(az) run fill ~8 ~ ~20 ~10 ~ ~22 gold_ore

# Some decoy iron ore to confuse
$execute positioned $(ax) 304 $(az) run fill ~20 ~ ~15 ~23 ~1 ~17 iron_ore
$execute positioned $(ax) 307 $(az) run fill ~30 ~ ~35 ~33 ~1 ~37 iron_ore
