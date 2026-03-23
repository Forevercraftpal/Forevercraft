# Lumber T8: Jungle — tall 2x2 trunk jungle trees (96 jungle logs needed)
# ~8 tall jungle trees with 2x2 trunks, 10 blocks tall = 320 logs available

# Floor
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 grass_block replace dirt

# Jungle Tree 1 (x+5, z+5, 2x2 trunk, 10 tall)
$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~5 ~6 ~9 ~6 jungle_log
$execute positioned $(ax) 309 $(az) run fill ~3 ~ ~3 ~8 ~2 ~8 jungle_leaves[persistent=true]
$execute positioned $(ax) 311 $(az) run fill ~4 ~ ~4 ~7 ~1 ~7 jungle_leaves[persistent=true]

# Jungle Tree 2 (x+16, z+5, 2x2 trunk, 9 tall)
$execute positioned $(ax) 301 $(az) run fill ~16 ~ ~5 ~17 ~8 ~6 jungle_log
$execute positioned $(ax) 308 $(az) run fill ~14 ~ ~3 ~19 ~2 ~8 jungle_leaves[persistent=true]
$execute positioned $(ax) 310 $(az) run fill ~15 ~ ~4 ~18 ~1 ~7 jungle_leaves[persistent=true]

# Jungle Tree 3 (x+30, z+5, 2x2 trunk, 10 tall)
$execute positioned $(ax) 301 $(az) run fill ~30 ~ ~5 ~31 ~9 ~6 jungle_log
$execute positioned $(ax) 309 $(az) run fill ~28 ~ ~3 ~33 ~2 ~8 jungle_leaves[persistent=true]
$execute positioned $(ax) 311 $(az) run fill ~29 ~ ~4 ~32 ~1 ~7 jungle_leaves[persistent=true]

# Jungle Tree 4 (x+42, z+6, 2x2 trunk, 8 tall)
$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~6 ~43 ~7 ~7 jungle_log
$execute positioned $(ax) 307 $(az) run fill ~40 ~ ~4 ~45 ~2 ~9 jungle_leaves[persistent=true]
$execute positioned $(ax) 309 $(az) run fill ~41 ~ ~5 ~44 ~1 ~8 jungle_leaves[persistent=true]

# Jungle Tree 5 (x+5, z+30, 2x2 trunk, 10 tall)
$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~30 ~6 ~9 ~31 jungle_log
$execute positioned $(ax) 309 $(az) run fill ~3 ~ ~28 ~8 ~2 ~33 jungle_leaves[persistent=true]
$execute positioned $(ax) 311 $(az) run fill ~4 ~ ~29 ~7 ~1 ~32 jungle_leaves[persistent=true]

# Jungle Tree 6 (x+18, z+32, 2x2 trunk, 9 tall)
$execute positioned $(ax) 301 $(az) run fill ~18 ~ ~32 ~19 ~8 ~33 jungle_log
$execute positioned $(ax) 308 $(az) run fill ~16 ~ ~30 ~21 ~2 ~35 jungle_leaves[persistent=true]
$execute positioned $(ax) 310 $(az) run fill ~17 ~ ~31 ~20 ~1 ~34 jungle_leaves[persistent=true]

# Jungle Tree 7 (x+32, z+30, 2x2 trunk, 10 tall)
$execute positioned $(ax) 301 $(az) run fill ~32 ~ ~30 ~33 ~9 ~31 jungle_log
$execute positioned $(ax) 309 $(az) run fill ~30 ~ ~28 ~35 ~2 ~33 jungle_leaves[persistent=true]
$execute positioned $(ax) 311 $(az) run fill ~31 ~ ~29 ~34 ~1 ~32 jungle_leaves[persistent=true]

# Jungle Tree 8 (x+42, z+32, 2x2 trunk, 8 tall)
$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~32 ~43 ~7 ~33 jungle_log
$execute positioned $(ax) 307 $(az) run fill ~40 ~ ~30 ~45 ~2 ~35 jungle_leaves[persistent=true]
$execute positioned $(ax) 309 $(az) run fill ~41 ~ ~31 ~44 ~1 ~34 jungle_leaves[persistent=true]

# Vines on some trees for atmosphere
$execute positioned $(ax) 301 $(az) run fill ~4 ~2 ~5 ~4 ~6 ~5 vine[north=true]
$execute positioned $(ax) 301 $(az) run fill ~17 ~2 ~5 ~17 ~5 ~5 vine[east=true]
$execute positioned $(ax) 301 $(az) run fill ~5 ~2 ~29 ~5 ~6 ~29 vine[south=true]
$execute positioned $(ax) 301 $(az) run fill ~34 ~2 ~30 ~34 ~6 ~30 vine[west=true]
