# Mining T9: Master Miner — One of each overworld ore type
# 9 types: coal, iron, copper, gold, redstone, lapis, diamond, emerald + ancient debris (nether but counts)
# Each ore hidden in different section of cave

# All deepslate base
$execute positioned $(ax) 300 $(az) run fill ~0 ~ ~0 ~47 ~7 ~47 deepslate replace stone
$execute positioned $(ax) 308 $(az) run fill ~0 ~ ~0 ~47 ~7 ~47 deepslate replace stone

# Carve main tunnels (cross shape)
$execute positioned $(ax) 300 $(az) run fill ~22 ~ ~2 ~26 ~3 ~46 air
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~22 ~46 ~3 ~26 air

# Coal pocket (NW)
$execute positioned $(ax) 303 $(az) run fill ~5 ~ ~5 ~7 ~ ~7 coal_ore
# Iron pocket (N)
$execute positioned $(ax) 306 $(az) run fill ~22 ~ ~5 ~24 ~ ~7 deepslate_iron_ore
# Copper pocket (NE)
$execute positioned $(ax) 303 $(az) run fill ~38 ~ ~5 ~40 ~ ~7 copper_ore
# Gold pocket (W)
$execute positioned $(ax) 309 $(az) run fill ~5 ~ ~22 ~7 ~ ~24 deepslate_gold_ore
# Redstone pocket (E)
$execute positioned $(ax) 309 $(az) run fill ~38 ~ ~22 ~40 ~ ~24 deepslate_redstone_ore
# Lapis pocket (SW)
$execute positioned $(ax) 303 $(az) run fill ~5 ~ ~38 ~7 ~ ~40 deepslate_lapis_ore
# Diamond pocket (S)
$execute positioned $(ax) 312 $(az) run fill ~22 ~ ~38 ~24 ~ ~40 deepslate_diamond_ore
# Emerald pocket (SE)
$execute positioned $(ax) 306 $(az) run fill ~38 ~ ~38 ~40 ~ ~40 deepslate_emerald_ore
# Ancient debris pocket (center deep)
$execute positioned $(ax) 318 $(az) run fill ~22 ~ ~22 ~24 ~ ~24 ancient_debris
