# Lumber T1: Oak forest — 12 oak trees
# Dirt/grass floor with oak log columns + leaf canopies

# Floor: dirt then grass
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 grass_block replace dirt

# Tree 1 (x+5, z+5, height 5)
$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~5 ~5 ~4 ~5 oak_log
$execute positioned $(ax) 305 $(az) run fill ~3 ~ ~3 ~7 ~1 ~7 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~4 ~ ~4 ~6 ~ ~6 oak_leaves[persistent=true]

# Tree 2 (x+12, z+8, height 4)
$execute positioned $(ax) 301 $(az) run fill ~12 ~ ~8 ~12 ~3 ~8 oak_log
$execute positioned $(ax) 304 $(az) run fill ~10 ~ ~6 ~14 ~1 ~10 oak_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~11 ~ ~7 ~13 ~ ~9 oak_leaves[persistent=true]

# Tree 3 (x+20, z+5, height 5)
$execute positioned $(ax) 301 $(az) run fill ~20 ~ ~5 ~20 ~4 ~5 oak_log
$execute positioned $(ax) 305 $(az) run fill ~18 ~ ~3 ~22 ~1 ~7 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~19 ~ ~4 ~21 ~ ~6 oak_leaves[persistent=true]

# Tree 4 (x+30, z+6, height 4)
$execute positioned $(ax) 301 $(az) run fill ~30 ~ ~6 ~30 ~3 ~6 oak_log
$execute positioned $(ax) 304 $(az) run fill ~28 ~ ~4 ~32 ~1 ~8 oak_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~29 ~ ~5 ~31 ~ ~7 oak_leaves[persistent=true]

# Tree 5 (x+40, z+8, height 5)
$execute positioned $(ax) 301 $(az) run fill ~40 ~ ~8 ~40 ~4 ~8 oak_log
$execute positioned $(ax) 305 $(az) run fill ~38 ~ ~6 ~42 ~1 ~10 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~39 ~ ~7 ~41 ~ ~9 oak_leaves[persistent=true]

# Tree 6 (x+7, z+20, height 5)
$execute positioned $(ax) 301 $(az) run fill ~7 ~ ~20 ~7 ~4 ~20 oak_log
$execute positioned $(ax) 305 $(az) run fill ~5 ~ ~18 ~9 ~1 ~22 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~6 ~ ~19 ~8 ~ ~21 oak_leaves[persistent=true]

# Tree 7 (x+16, z+18, height 4)
$execute positioned $(ax) 301 $(az) run fill ~16 ~ ~18 ~16 ~3 ~18 oak_log
$execute positioned $(ax) 304 $(az) run fill ~14 ~ ~16 ~18 ~1 ~20 oak_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~15 ~ ~17 ~17 ~ ~19 oak_leaves[persistent=true]

# Tree 8 (x+35, z+20, height 5)
$execute positioned $(ax) 301 $(az) run fill ~35 ~ ~20 ~35 ~4 ~20 oak_log
$execute positioned $(ax) 305 $(az) run fill ~33 ~ ~18 ~37 ~1 ~22 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~34 ~ ~19 ~36 ~ ~21 oak_leaves[persistent=true]

# Tree 9 (x+6, z+35, height 4)
$execute positioned $(ax) 301 $(az) run fill ~6 ~ ~35 ~6 ~3 ~35 oak_log
$execute positioned $(ax) 304 $(az) run fill ~4 ~ ~33 ~8 ~1 ~37 oak_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~5 ~ ~34 ~7 ~ ~36 oak_leaves[persistent=true]

# Tree 10 (x+18, z+38, height 5)
$execute positioned $(ax) 301 $(az) run fill ~18 ~ ~38 ~18 ~4 ~38 oak_log
$execute positioned $(ax) 305 $(az) run fill ~16 ~ ~36 ~20 ~1 ~40 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~17 ~ ~37 ~19 ~ ~39 oak_leaves[persistent=true]

# Tree 11 (x+32, z+36, height 4)
$execute positioned $(ax) 301 $(az) run fill ~32 ~ ~36 ~32 ~3 ~36 oak_log
$execute positioned $(ax) 304 $(az) run fill ~30 ~ ~34 ~34 ~1 ~38 oak_leaves[persistent=true]
$execute positioned $(ax) 305 $(az) run fill ~31 ~ ~35 ~33 ~ ~37 oak_leaves[persistent=true]

# Tree 12 (x+42, z+34, height 5)
$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~34 ~42 ~4 ~34 oak_log
$execute positioned $(ax) 305 $(az) run fill ~40 ~ ~32 ~44 ~1 ~36 oak_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~41 ~ ~33 ~43 ~ ~35 oak_leaves[persistent=true]
