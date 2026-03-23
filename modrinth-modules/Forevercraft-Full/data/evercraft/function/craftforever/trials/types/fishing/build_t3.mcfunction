# Fishing Trial T3 — Standard lake (4 blocks deep) with lily pads
# Macro file — run with storage evercraft:trials

$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~3 ~46 water

# Lily pads on surface
$execute positioned $(ax) 304 $(az) run fill ~5 ~ ~5 ~8 ~ ~8 lily_pad
$execute positioned $(ax) 304 $(az) run fill ~35 ~ ~35 ~40 ~ ~40 lily_pad
$execute positioned $(ax) 304 $(az) run fill ~10 ~ ~35 ~15 ~ ~38 lily_pad
