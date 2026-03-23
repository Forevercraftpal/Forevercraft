# Artisan T6: Collect 48 wool and string — sheep section + cobweb section
# Left half: sheep on grass (wool), Right half: cobweb cave (string)

# Left half grass floor (sheep area)
$execute positioned $(ax) 300 $(az) run fill ~2 ~ ~2 ~23 ~ ~46 grass_block
# Right half stone floor (cobweb area)
$execute positioned $(ax) 300 $(az) run fill ~24 ~ ~2 ~46 ~ ~46 stone

# Dividing wall (partial, with gaps for player movement)
$execute positioned $(ax) 300 $(az) run fill ~23 ~ ~2 ~24 ~3 ~46 stone_bricks
$execute positioned $(ax) 300 $(az) run fill ~23 ~ ~10 ~24 ~3 ~14 air
$execute positioned $(ax) 300 $(az) run fill ~23 ~ ~30 ~24 ~3 ~34 air

# === Sheep section (30 sheep) ===
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~6 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~6 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~15 ~ ~6 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~6 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~14 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~14 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~15 ~ ~14 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~14 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~20 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~20 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~15 ~ ~20 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~20 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~26 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~26 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~15 ~ ~26 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~26 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~32 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~32 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~15 ~ ~32 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~32 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~38 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~38 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~15 ~ ~38 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~38 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~5 ~ ~42 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~10 ~ ~42 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~15 ~ ~42 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~20 ~ ~42 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~8 ~ ~10 {"Tags":["ec.tt_mob"]}
$execute positioned $(ax) 301 $(az) run summon sheep ~16 ~ ~10 {"Tags":["ec.tt_mob"]}

# === Cobweb section (35 cobwebs for string) ===
$execute positioned $(ax) 301 $(az) run setblock ~28 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~32 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~36 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~40 ~ ~5 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~44 ~ ~5 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~28 ~ ~10 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~32 ~ ~10 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~36 ~ ~10 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~40 ~ ~10 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~44 ~ ~10 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~28 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~32 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~36 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~40 ~ ~15 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~44 ~ ~15 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~28 ~ ~20 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~32 ~ ~20 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~36 ~ ~20 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~40 ~ ~20 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~44 ~ ~20 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~28 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~32 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~36 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~40 ~ ~25 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~44 ~ ~25 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~28 ~ ~30 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~32 ~ ~30 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~36 ~ ~30 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~40 ~ ~30 cobweb
$execute positioned $(ax) 302 $(az) run setblock ~44 ~ ~30 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~28 ~ ~35 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~32 ~ ~35 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~36 ~ ~35 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~40 ~ ~35 cobweb
$execute positioned $(ax) 301 $(az) run setblock ~44 ~ ~35 cobweb
