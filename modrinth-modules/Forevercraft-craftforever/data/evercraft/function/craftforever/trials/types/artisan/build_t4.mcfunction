# Artisan T4: Collect 32 flowers — flower garden with ~45 flowers
# Grass floor with flower patches (poppy, dandelion, blue_orchid, allium, red_tulip, lily_of_the_valley)

# Grass floor
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 grass_block

# Poppy patches (~8)
$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~5 ~6 ~ ~8 poppy
$execute positioned $(ax) 301 $(az) run fill ~8 ~ ~5 ~8 ~ ~7 poppy
# Dandelion patches (~8)
$execute positioned $(ax) 301 $(az) run fill ~14 ~ ~5 ~15 ~ ~8 dandelion
$execute positioned $(ax) 301 $(az) run fill ~17 ~ ~5 ~17 ~ ~7 dandelion
# Blue orchid patches (~8)
$execute positioned $(ax) 301 $(az) run fill ~25 ~ ~5 ~26 ~ ~8 blue_orchid
$execute positioned $(ax) 301 $(az) run fill ~28 ~ ~5 ~28 ~ ~7 blue_orchid
# Allium patches (~8)
$execute positioned $(ax) 301 $(az) run fill ~35 ~ ~5 ~36 ~ ~8 allium
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~5 ~38 ~ ~7 allium
# Red tulip patches (~8)
$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~18 ~6 ~ ~21 red_tulip
$execute positioned $(ax) 301 $(az) run fill ~8 ~ ~18 ~8 ~ ~20 red_tulip
# Lily of the valley patches (~8)
$execute positioned $(ax) 301 $(az) run fill ~14 ~ ~18 ~15 ~ ~21 lily_of_the_valley
$execute positioned $(ax) 301 $(az) run fill ~17 ~ ~18 ~17 ~ ~20 lily_of_the_valley
# Extra mixed patches for surplus
$execute positioned $(ax) 301 $(az) run fill ~25 ~ ~18 ~27 ~ ~19 poppy
$execute positioned $(ax) 301 $(az) run fill ~35 ~ ~18 ~37 ~ ~19 dandelion
$execute positioned $(ax) 301 $(az) run fill ~5 ~ ~32 ~7 ~ ~33 blue_orchid
$execute positioned $(ax) 301 $(az) run fill ~14 ~ ~32 ~16 ~ ~33 allium
