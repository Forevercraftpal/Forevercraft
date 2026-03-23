# Artisan T7: Collect 64 crafting materials — sheep + cobwebs + flowers
# Three sections: sheep (left), cobwebs (center), flowers (right)

# Grass floor for sheep and flowers
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~15 ~ ~46 grass_block
# Stone floor for cobweb center
$execute positioned $(ax) 300 $(az) run fill ~16 ~ ~2 ~31 ~ ~46 stone
# Grass for flower section
$execute positioned $(ax) 300 $(az) run fill ~32 ~ ~2 ~46 ~ ~46 grass_block

# === Sheep section (20 sheep) ===
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~6 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~6 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~12 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~12 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~18 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~18 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~24 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~24 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~30 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~30 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~36 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~36 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~42 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~42 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~3 ~ ~9 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~12 ~ ~9 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~3 ~ ~21 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~12 ~ ~21 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~3 ~ ~33 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~12 ~ ~33 {"Tags":["ec.tt_mob"]}

# === Cobweb section (25 cobwebs) ===
$execute positioned $(ax) 301 $(az) run setblock ~18 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~22 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~26 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~30 ~ ~5 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~18 ~ ~10 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~22 ~ ~10 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~26 ~ ~10 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~30 ~ ~10 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~18 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~22 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~26 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~30 ~ ~15 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~18 ~ ~20 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~22 ~ ~20 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~26 ~ ~20 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~30 ~ ~20 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~18 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~22 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~26 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~30 ~ ~25 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~20 ~ ~30 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~24 ~ ~30 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~28 ~ ~30 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~20 ~ ~35 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~28 ~ ~35 cobweb

# === Flower section (30 flowers) ===
$execute positioned $(ax) 301 $(az) run fill ~34 ~ ~5 ~36 ~ ~7 poppy
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~5 ~40 ~ ~7 dandelion
$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~5 ~44 ~ ~7 blue_orchid
$execute positioned $(ax) 301 $(az) run fill ~34 ~ ~15 ~36 ~ ~17 allium
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~15 ~40 ~ ~17 red_tulip
$execute positioned $(ax) 301 $(az) run fill ~42 ~ ~15 ~44 ~ ~17 lily_of_the_valley
$execute positioned $(ax) 301 $(az) run fill ~34 ~ ~25 ~36 ~ ~27 poppy
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~25 ~40 ~ ~27 dandelion
$execute positioned $(ax) 301 $(az) run fill ~34 ~ ~35 ~35 ~ ~36 blue_orchid
$execute positioned $(ax) 301 $(az) run fill ~38 ~ ~35 ~39 ~ ~36 allium
