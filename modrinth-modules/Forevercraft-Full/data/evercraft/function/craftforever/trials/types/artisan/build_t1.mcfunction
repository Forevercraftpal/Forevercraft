# Artisan T1: Shear 10 sheep — 15 sheep on grass, AI enabled for wool regrowth
# Grass floor so sheep can eat and regrow wool

# Grass floor
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~46 ~ ~46 grass_block

# Spawn 15 sheep (AI enabled, will eat grass to regrow wool)
$execute positioned $(ax) 301 $(az) run summon sheep ~8 ~ ~8 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~14 ~ ~8 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~8 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~26 ~ ~8 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~32 ~ ~8 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~8 ~ ~18 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~14 ~ ~18 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~18 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~26 ~ ~18 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~32 ~ ~18 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~8 ~ ~28 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~14 ~ ~28 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~28 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~26 ~ ~28 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~32 ~ ~28 {"Tags":["ec.tt_mob"]}
