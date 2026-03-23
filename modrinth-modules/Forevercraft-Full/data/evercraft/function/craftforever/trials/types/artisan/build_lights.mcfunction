# Artisan Arena — Place light sources (macro)
# light_block[level=15] grid on ceiling at Y=323

$execute positioned $(ax) 323 $(az) run setblock ~6 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~18 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~30 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~42 ~ ~6 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~6 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~18 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~30 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~42 ~ ~18 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~6 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~18 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~30 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~42 ~ ~30 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~6 ~ ~42 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~18 ~ ~42 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~30 ~ ~42 light[level=15]
$execute positioned $(ax) 323 $(az) run setblock ~42 ~ ~42 light[level=15]

# Additional lights at lower heights for ground-level visibility
$execute positioned $(ax) 310 $(az) run setblock ~12 ~ ~12 light[level=15]
$execute positioned $(ax) 310 $(az) run setblock ~36 ~ ~12 light[level=15]
$execute positioned $(ax) 310 $(az) run setblock ~12 ~ ~36 light[level=15]
$execute positioned $(ax) 310 $(az) run setblock ~36 ~ ~36 light[level=15]
$execute positioned $(ax) 310 $(az) run setblock ~24 ~ ~24 light[level=15]

# Spawn platform light
$execute positioned $(ax) 303 $(az) run setblock ~24 ~ ~24 light[level=15]
