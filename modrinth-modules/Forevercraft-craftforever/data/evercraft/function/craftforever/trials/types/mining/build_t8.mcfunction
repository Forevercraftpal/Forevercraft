# Mining T8: Precision mine — mine ONLY gold, leave everything else
# Mixed ore field with gold scattered among other ores
# Player loses score for mining non-gold blocks

# All deepslate
$execute positioned $(ax) 300 $(az) run fill ~0 ~ ~0 ~47 ~7 ~47 deepslate replace stone

# Gold ore (20 blocks — need 16, with some buffer)
$execute positioned $(ax) 302 $(az) run fill ~5 ~ ~5 ~6 ~ ~6 gold_ore
$execute positioned $(ax) 304 $(az) run fill ~15 ~ ~10 ~16 ~ ~11 gold_ore
$execute positioned $(ax) 306 $(az) run fill ~30 ~ ~8 ~31 ~ ~9 gold_ore
$execute positioned $(ax) 308 $(az) run fill ~40 ~ ~15 ~41 ~ ~16 gold_ore
$execute positioned $(ax) 310 $(az) run fill ~10 ~ ~25 ~11 ~ ~26 gold_ore
$execute positioned $(ax) 302 $(az) run fill ~25 ~ ~35 ~26 ~ ~36 gold_ore
$execute positioned $(ax) 305 $(az) run fill ~38 ~ ~38 ~39 ~ ~39 gold_ore
$execute positioned $(ax) 312 $(az) run fill ~8 ~ ~40 ~9 ~ ~41 gold_ore
$execute positioned $(ax) 316 $(az) run fill ~20 ~ ~20 ~21 ~ ~21 gold_ore
$execute positioned $(ax) 314 $(az) run fill ~35 ~ ~30 ~36 ~ ~31 gold_ore

# Decoy ores (iron, copper, lapis — DO NOT MINE THESE)
$execute positioned $(ax) 303 $(az) run fill ~8 ~ ~8 ~10 ~1 ~10 iron_ore
$execute positioned $(ax) 305 $(az) run fill ~20 ~ ~5 ~23 ~1 ~8 copper_ore
$execute positioned $(ax) 307 $(az) run fill ~35 ~ ~12 ~38 ~1 ~15 lapis_ore
$execute positioned $(ax) 309 $(az) run fill ~15 ~ ~30 ~18 ~1 ~33 iron_ore
$execute positioned $(ax) 311 $(az) run fill ~30 ~ ~40 ~33 ~1 ~43 copper_ore
$execute positioned $(ax) 315 $(az) run fill ~5 ~ ~15 ~8 ~1 ~18 lapis_ore

# Carve some tunnels to make it navigable
$execute positioned $(ax) 300 $(az) run fill ~22 ~ ~22 ~26 ~3 ~26 air
$execute positioned $(ax) 300 $(az) run fill ~10 ~ ~20 ~16 ~2 ~24 air
$execute positioned $(ax) 300 $(az) run fill ~30 ~ ~20 ~36 ~2 ~24 air
$execute positioned $(ax) 300 $(az) run fill ~20 ~ ~10 ~24 ~2 ~16 air
$execute positioned $(ax) 300 $(az) run fill ~20 ~ ~30 ~24 ~2 ~36 air
