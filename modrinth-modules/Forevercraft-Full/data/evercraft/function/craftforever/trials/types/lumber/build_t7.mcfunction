# Lumber T7: Forest with saplings — oak + spruce (16 trees, 64 logs + replant flavor)

# Floor
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 dirt
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 grass_block replace dirt

# === OAK TREES (8) ===
$execute positioned $(ax) 301 $(az) run fill ~4 ~ ~5 ~4 ~4 ~5 oak_log
$execute positioned $(ax) 305 $(az) run fill ~2 ~ ~3 ~6 ~1 ~7 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~12 ~ ~8 ~12 ~4 ~8 oak_log
$execute positioned $(ax) 305 $(az) run fill ~10 ~ ~6 ~14 ~1 ~10 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~20 ~5 ~3 ~20 oak_log
$execute positioned $(ax) 304 $(az) run fill ~3 ~ ~18 ~7 ~1 ~22 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~14 ~ ~18 ~14 ~4 ~18 oak_log
$execute positioned $(ax) 305 $(az) run fill ~12 ~ ~16 ~16 ~1 ~20 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~6 ~ ~34 ~6 ~4 ~34 oak_log
$execute positioned $(ax) 305 $(az) run fill ~4 ~ ~32 ~8 ~1 ~36 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~15 ~ ~36 ~15 ~3 ~36 oak_log
$execute positioned $(ax) 304 $(az) run fill ~13 ~ ~34 ~17 ~1 ~38 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~8 ~ ~44 ~8 ~4 ~44 oak_log
$execute positioned $(ax) 305 $(az) run fill ~6 ~ ~42 ~10 ~1 ~46 oak_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~18 ~ ~42 ~18 ~3 ~42 oak_log
$execute positioned $(ax) 304 $(az) run fill ~16 ~ ~40 ~20 ~1 ~44 oak_leaves[persistent=true]

# === SPRUCE TREES (8) ===
$execute positioned $(ax) 301 $(az) run fill ~34 ~ ~4 ~34 ~5 ~4 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~32 ~ ~2 ~36 ~1 ~6 spruce_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~33 ~ ~3 ~35 ~1 ~5 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~7 ~42 ~4 ~7 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~40 ~ ~5 ~44 ~1 ~9 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~36 ~ ~18 ~36 ~5 ~18 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~34 ~ ~16 ~38 ~1 ~20 spruce_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~35 ~ ~17 ~37 ~1 ~19 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~44 ~ ~16 ~44 ~4 ~16 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~42 ~ ~14 ~46 ~1 ~18 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~34 ~ ~32 ~34 ~5 ~32 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~32 ~ ~30 ~36 ~1 ~34 spruce_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~33 ~ ~31 ~35 ~1 ~33 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~34 ~42 ~4 ~34 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~40 ~ ~32 ~44 ~1 ~36 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~36 ~ ~42 ~36 ~5 ~42 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~34 ~ ~40 ~38 ~1 ~44 spruce_leaves[persistent=true]
$execute positioned $(ax) 306 $(az) run fill ~35 ~ ~41 ~37 ~1 ~43 spruce_leaves[persistent=true]

$execute positioned $(ax) 301 $(az) run fill ~44 ~ ~44 ~44 ~4 ~44 spruce_log
$execute positioned $(ax) 304 $(az) run fill ~42 ~ ~42 ~46 ~1 ~46 spruce_leaves[persistent=true]

# Give saplings for replanting flavor
$execute positioned $(ax) 301 $(az) run setblock ~24 ~ ~23 chest
$execute positioned $(ax) 301 $(az) run data merge block ~24 ~ ~23 {"Items":[{"id":"minecraft:oak_sapling","count":32,"Slot":0b},{"id":"minecraft:spruce_sapling","count":32,"Slot":1b}]}
