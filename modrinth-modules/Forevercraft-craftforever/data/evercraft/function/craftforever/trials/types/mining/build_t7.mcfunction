# Mining T7: Deep Dive — Find and mine 8 hidden ore pockets
# Large cave system with ore markers hidden behind walls
# Uses markers to track which pockets have been found

# Carve cave tunnels
$execute positioned $(ax) 300 $(az) run fill ~20 ~ ~20 ~28 ~5 ~28 air
$execute positioned $(ax) 300 $(az) run fill ~10 ~ ~10 ~16 ~4 ~14 air
$execute positioned $(ax) 300 $(az) run fill ~14 ~ ~12 ~22 ~3 ~16 air
$execute positioned $(ax) 300 $(az) run fill ~35 ~ ~15 ~42 ~4 ~20 air
$execute positioned $(ax) 300 $(az) run fill ~28 ~ ~18 ~38 ~3 ~22 air
$execute positioned $(ax) 300 $(az) run fill ~5 ~ ~30 ~12 ~5 ~38 air
$execute positioned $(ax) 300 $(az) run fill ~10 ~ ~35 ~20 ~3 ~42 air
$execute positioned $(ax) 300 $(az) run fill ~30 ~ ~30 ~40 ~4 ~38 air
$execute positioned $(ax) 300 $(az) run fill ~35 ~ ~35 ~42 ~3 ~44 air

# Mix terrain around caves
$execute positioned $(ax) 300 $(az) run fill ~0 ~ ~0 ~47 ~3 ~47 deepslate replace stone

# Hidden ore pockets (8 total, behind 1-2 blocks of stone/deepslate)
# Pocket 1
$execute positioned $(ax) 303 $(az) run fill ~8 ~ ~12 ~9 ~ ~13 diamond_ore
# Pocket 2
$execute positioned $(ax) 306 $(az) run fill ~18 ~ ~10 ~19 ~ ~11 gold_ore
# Pocket 3
$execute positioned $(ax) 302 $(az) run fill ~40 ~ ~18 ~41 ~ ~19 emerald_ore
# Pocket 4
$execute positioned $(ax) 309 $(az) run fill ~7 ~ ~33 ~8 ~ ~34 diamond_ore
# Pocket 5
$execute positioned $(ax) 304 $(az) run fill ~38 ~ ~36 ~39 ~ ~37 iron_ore
# Pocket 6
$execute positioned $(ax) 315 $(az) run fill ~15 ~ ~40 ~16 ~ ~41 gold_ore
# Pocket 7
$execute positioned $(ax) 312 $(az) run fill ~35 ~ ~32 ~36 ~ ~33 lapis_ore
# Pocket 8
$execute positioned $(ax) 318 $(az) run fill ~25 ~ ~25 ~26 ~ ~26 diamond_ore
