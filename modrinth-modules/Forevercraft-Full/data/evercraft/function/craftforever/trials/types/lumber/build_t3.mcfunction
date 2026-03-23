# Lumber T3: Mixed forest — 3 sections with oak, birch, spruce (12 trees)
# Need 3 different wood types to complete

# Floor
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 grass_block replace dirt

# === OAK SECTION (left third, x+2 to x+15) ===
# Oak 1 (x+5, z+8, height 5)
$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~8 ~5 ~4 ~8 oak_log
$execute positioned $(ax) 305 $(az) run fill ~3 ~ ~6 ~7 ~1 ~10 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~4 ~ ~7 ~6 ~ ~9 oak_leaves[persistent=true]

# Oak 2 (x+10, z+20, height 4)
$execute positioned $(ax) 301 $(az) run fill ~10 ~ ~20 ~10 ~3 ~20 oak_log
$execute positioned $(ax) 304 $(az) run fill ~8 ~ ~18 ~12 ~1 ~22 oak_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~9 ~ ~19 ~11 ~ ~21 oak_leaves[persistent=true]

# Oak 3 (x+7, z+35, height 5)
$execute positioned $(ax) 301 $(az) run fill ~7 ~ ~35 ~7 ~4 ~35 oak_log
$execute positioned $(ax) 305 $(az) run fill ~5 ~ ~33 ~9 ~1 ~37 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~6 ~ ~34 ~8 ~ ~36 oak_leaves[persistent=true]

# Oak 4 (x+12, z+42, height 4)
$execute positioned $(ax) 301 $(az) run fill ~12 ~ ~42 ~12 ~3 ~42 oak_log
$execute positioned $(ax) 304 $(az) run fill ~10 ~ ~40 ~14 ~1 ~44 oak_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~11 ~ ~41 ~13 ~ ~43 oak_leaves[persistent=true]

# === BIRCH SECTION (middle third, x+17 to x+30) ===
# Birch 1 (x+20, z+6, height 5)
$execute positioned $(ax) 301 $(az) run fill ~20 ~ ~6 ~20 ~4 ~6 birch_log
$execute positioned $(ax) 305 $(az) run fill ~18 ~ ~4 ~22 ~1 ~8 birch_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~19 ~ ~5 ~21 ~ ~7 birch_leaves[persistent=true]

# Birch 2 (x+27, z+18, height 4)
$execute positioned $(ax) 301 $(az) run fill ~27 ~ ~18 ~27 ~3 ~18 birch_log
$execute positioned $(ax) 304 $(az) run fill ~25 ~ ~16 ~29 ~1 ~20 birch_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~26 ~ ~17 ~28 ~ ~19 birch_leaves[persistent=true]

# Birch 3 (x+22, z+34, height 5)
$execute positioned $(ax) 301 $(az) run fill ~22 ~ ~34 ~22 ~4 ~34 birch_log
$execute positioned $(ax) 305 $(az) run fill ~20 ~ ~32 ~24 ~1 ~36 birch_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~21 ~ ~33 ~23 ~ ~35 birch_leaves[persistent=true]

# Birch 4 (x+28, z+42, height 4)
$execute positioned $(ax) 301 $(az) run fill ~28 ~ ~42 ~28 ~3 ~42 birch_log
$execute positioned $(ax) 304 $(az) run fill ~26 ~ ~40 ~30 ~1 ~44 birch_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~27 ~ ~41 ~29 ~ ~43 birch_leaves[persistent=true]

# === SPRUCE SECTION (right third, x+32 to x+46) ===
# Spruce 1 (x+36, z+6, height 6)
$execute positioned $(ax) 301 $(az) run fill ~36 ~ ~6 ~36 ~5 ~6 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~34 ~ ~4 ~38 ~1 ~8 spruce_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~35 ~ ~5 ~37 ~1 ~7 spruce_leaves[persistent=true]

# Spruce 2 (x+42, z+18, height 5)
$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~18 ~42 ~4 ~18 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~40 ~ ~16 ~44 ~1 ~20 spruce_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~41 ~ ~17 ~43 ~1 ~19 spruce_leaves[persistent=true]

# Spruce 3 (x+38, z+32, height 6)
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~32 ~38 ~5 ~32 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~36 ~ ~30 ~40 ~1 ~34 spruce_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~37 ~ ~31 ~39 ~1 ~33 spruce_leaves[persistent=true]

# Spruce 4 (x+44, z+40, height 5)
$execute positioned $(ax) 301 $(az) run fill ~44 ~ ~40 ~44 ~4 ~40 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~42 ~ ~38 ~46 ~1 ~42 spruce_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~43 ~ ~39 ~45 ~1 ~41 spruce_leaves[persistent=true]
