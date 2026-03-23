# Building T9: Build 3 Structures — three marked areas, 768 blocks total
# Player builds in each designated zone

# Zone 1 marker (magenta wool border, top-left)
$execute positioned $(ax) 300 $(az) run fill ~3 ~ ~3 ~14 ~ ~3 magenta_wool
$execute positioned $(ax) 300 $(az) run fill ~3 ~ ~14 ~14 ~ ~14 magenta_wool
$execute positioned $(ax) 300 $(az) run fill ~3 ~ ~3 ~3 ~ ~14 magenta_wool
$execute positioned $(ax) 300 $(az) run fill ~14 ~ ~3 ~14 ~ ~14 magenta_wool

# Zone 2 marker (light_blue wool border, top-right)
$execute positioned $(ax) 300 $(az) run fill ~33 ~ ~3 ~44 ~ ~3 light_blue_wool
$execute positioned $(ax) 300 $(az) run fill ~33 ~ ~14 ~44 ~ ~14 light_blue_wool
$execute positioned $(ax) 300 $(az) run fill ~33 ~ ~3 ~33 ~ ~14 light_blue_wool
$execute positioned $(ax) 300 $(az) run fill ~44 ~ ~3 ~44 ~ ~14 light_blue_wool

# Zone 3 marker (pink wool border, bottom-center)
$execute positioned $(ax) 300 $(az) run fill ~17 ~ ~33 ~30 ~ ~33 pink_wool
$execute positioned $(ax) 300 $(az) run fill ~17 ~ ~44 ~30 ~ ~44 pink_wool
$execute positioned $(ax) 300 $(az) run fill ~17 ~ ~33 ~17 ~ ~44 pink_wool
$execute positioned $(ax) 300 $(az) run fill ~30 ~ ~33 ~30 ~ ~44 pink_wool
