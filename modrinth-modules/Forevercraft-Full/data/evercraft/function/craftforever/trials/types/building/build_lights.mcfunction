# Building Arena — Place light sources (macro)
# light_block[level=15] grid on ceiling at Y=323

$execute positioned $(ax) 323 $(az) run fill ~6 ~ ~6 ~6 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~18 ~ ~6 ~18 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~30 ~ ~6 ~30 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~42 ~ ~6 ~42 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~6 ~ ~18 ~6 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~18 ~ ~18 ~18 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~30 ~ ~18 ~30 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~42 ~ ~18 ~42 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~6 ~ ~30 ~6 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~18 ~ ~30 ~18 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~30 ~ ~30 ~30 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~42 ~ ~30 ~42 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~6 ~ ~42 ~6 ~ ~42 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~18 ~ ~42 ~18 ~ ~42 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~30 ~ ~42 ~30 ~ ~42 light[level=15]
$execute positioned $(ax) 323 $(az) run fill ~42 ~ ~42 ~42 ~ ~42 light[level=15]

# Also at spawn platform
$execute positioned $(ax) 303 $(az) run fill ~24 ~ ~24 ~24 ~ ~24 light[level=15]
