# Artisan T3: Mine 16 cobwebs — stone room with 25 cobwebs scattered at various heights
# Shears break cobwebs into string (not cobweb item); tracked via mined:cobweb

# Stone floor
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 stone

# Scatter 25+ cobwebs at various positions and heights
# Ground level row
$execute positioned $(ax) 301 $(az) run setblock ~5 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~10 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~15 ~ ~8 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~20 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~25 ~ ~7 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~30 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~35 ~ ~6 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~40 ~ ~5 cobweb
# Mid row
$execute positioned $(ax) 301 $(az) run setblock ~5 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~12 ~ ~15 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~18 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~25 ~ ~12 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~32 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~38 ~ ~15 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~42 ~ ~13 cobweb
# Far row
$execute positioned $(ax) 302 $(az) run setblock ~5 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~10 ~ ~28 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~18 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~24 ~ ~30 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~30 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~36 ~ ~28 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~42 ~ ~25 cobweb
# High spots
$execute positioned $(ax) 303 $(az) run setblock ~8 ~ ~35 cobweb
$execute positioned $(ax) 303 $(az) run setblock ~20 ~ ~38 cobweb
$execute positioned $(ax) 303 $(az) run setblock ~35 ~ ~35 cobweb

# Some stone pillars for visual interest and cobweb anchoring
$execute positioned $(ax) 300 $(az) run fill ~10 ~ ~10 ~10 ~4 ~10 stone
$execute positioned $(ax) 300 $(az) run fill ~25 ~ ~25 ~25 ~4 ~25 stone
$execute positioned $(ax) 300 $(az) run fill ~38 ~ ~12 ~38 ~4 ~12 stone
$execute positioned $(ax) 300 $(az) run fill ~12 ~ ~35 ~12 ~4 ~35 stone
