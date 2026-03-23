# Lumber T5: All 8 wood types — at least 2 trees each (16 trees total)
# Player must chop one of each type

# Floor
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 grass_block replace dirt

# === OAK (2 trees, NW corner) ===
$execute positioned $(ax) 301 $(az) run fill ~4 ~ ~4 ~4 ~4 ~4 oak_log
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~2 ~6 ~1 ~6 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~10 ~ ~8 ~10 ~3 ~8 oak_log
$execute positioned $(ax) 304 $(az) run fill ~8 ~ ~6 ~12 ~1 ~10 oak_leaves[persistent=true]

# === SPRUCE (2 trees, N center) ===
$execute positioned $(ax) 301 $(az) run fill ~18 ~ ~4 ~18 ~5 ~4 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~16 ~ ~2 ~20 ~1 ~6 spruce_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~17 ~ ~3 ~19 ~1 ~5 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~24 ~ ~8 ~24 ~4 ~8 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~22 ~ ~6 ~26 ~1 ~10 spruce_leaves[persistent=true]

# === BIRCH (2 trees, NE corner) ===
$execute positioned $(ax) 301 $(az) run fill ~34 ~ ~4 ~34 ~4 ~4 birch_log
$execute positioned $(ax) 305 $(az) run fill ~32 ~ ~2 ~36 ~1 ~6 birch_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~6 ~42 ~3 ~6 birch_log
$execute positioned $(ax) 304 $(az) run fill ~40 ~ ~4 ~44 ~1 ~8 birch_leaves[persistent=true]

# === JUNGLE (2 trees, W center) ===
$execute positioned $(ax) 301 $(az) run fill ~4 ~ ~18 ~4 ~5 ~18 jungle_log
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~16 ~6 ~2 ~20 jungle_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~10 ~ ~24 ~10 ~4 ~24 jungle_log
$execute positioned $(ax) 305 $(az) run fill ~8 ~ ~22 ~12 ~1 ~26 jungle_leaves[persistent=true]

# === ACACIA (2 trees, E center) ===
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~18 ~38 ~4 ~18 acacia_log
$execute positioned $(ax) 305 $(az) run fill ~36 ~ ~16 ~40 ~1 ~20 acacia_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~44 ~ ~24 ~44 ~3 ~24 acacia_log
$execute positioned $(ax) 304 $(az) run fill ~42 ~ ~22 ~46 ~1 ~26 acacia_leaves[persistent=true]

# === DARK OAK (2 trees, SW corner) ===
$execute positioned $(ax) 301 $(az) run fill ~4 ~ ~36 ~4 ~4 ~36 dark_oak_log
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~34 ~6 ~1 ~38 dark_oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~10 ~ ~42 ~10 ~3 ~42 dark_oak_log
$execute positioned $(ax) 304 $(az) run fill ~8 ~ ~40 ~12 ~1 ~44 dark_oak_leaves[persistent=true]

# === MANGROVE (2 trees, S center) ===
$execute positioned $(ax) 301 $(az) run fill ~20 ~ ~38 ~20 ~4 ~38 mangrove_log
$execute positioned $(ax) 305 $(az) run fill ~18 ~ ~36 ~22 ~1 ~40 mangrove_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~28 ~ ~42 ~28 ~3 ~42 mangrove_log
$execute positioned $(ax) 304 $(az) run fill ~26 ~ ~40 ~30 ~1 ~44 mangrove_leaves[persistent=true]

# === CHERRY (2 trees, SE corner) ===
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~38 ~38 ~4 ~38 cherry_log
$execute positioned $(ax) 305 $(az) run fill ~36 ~ ~36 ~40 ~1 ~40 cherry_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~44 ~ ~42 ~44 ~3 ~42 cherry_log
$execute positioned $(ax) 304 $(az) run fill ~42 ~ ~40 ~46 ~1 ~44 cherry_leaves[persistent=true]
