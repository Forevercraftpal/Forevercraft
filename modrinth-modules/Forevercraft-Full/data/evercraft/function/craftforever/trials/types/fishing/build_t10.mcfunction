# Fishing Trial T10 — Deep lake (6 blocks deep)
# Macro file — run with storage evercraft:trials

$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~5 ~46 water

# Kelp and seagrass throughout
$execute positioned $(ax) 300 $(az) run fill ~5 ~ ~5 ~15 ~3 ~15 kelp replace water
$execute positioned $(ax) 300 $(az) run fill ~30 ~ ~30 ~42 ~3 ~42 kelp replace water
$execute positioned $(ax) 300 $(az) run fill ~5 ~ ~30 ~15 ~ ~42 seagrass replace water
$execute positioned $(ax) 300 $(az) run fill ~30 ~ ~5 ~42 ~ ~15 seagrass replace water
