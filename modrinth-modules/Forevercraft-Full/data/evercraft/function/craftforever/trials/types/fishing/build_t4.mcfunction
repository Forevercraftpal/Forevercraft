# Fishing Trial T4 — Standard lake (4 blocks deep) with seagrass patches
# Macro file — run with storage evercraft:trials

$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~3 ~46 water

# Seagrass patches
$execute positioned $(ax) 300 $(az) run fill ~5 ~ ~5 ~12 ~ ~12 seagrass replace water
$execute positioned $(ax) 300 $(az) run fill ~30 ~ ~30 ~40 ~ ~40 seagrass replace water
$execute positioned $(ax) 300 $(az) run fill ~5 ~ ~35 ~12 ~ ~42 seagrass replace water
