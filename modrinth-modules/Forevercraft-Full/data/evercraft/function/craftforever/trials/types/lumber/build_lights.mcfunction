# Lumber Arena — Place light sources (macro)
# light[level=15] blocks in grid at ceiling Y=323 and mid-level Y=310

# Ceiling grid (every 12 blocks)
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

# Mid-level lights at Y=310 (among the canopy)
$execute positioned $(ax) 310 $(az) run fill ~12 ~ ~12 ~12 ~ ~12 light[level=15]
$execute positioned $(ax) 310 $(az) run fill ~36 ~ ~12 ~36 ~ ~12 light[level=15]
$execute positioned $(ax) 310 $(az) run fill ~12 ~ ~36 ~12 ~ ~36 light[level=15]
$execute positioned $(ax) 310 $(az) run fill ~36 ~ ~36 ~36 ~ ~36 light[level=15]
$execute positioned $(ax) 310 $(az) run fill ~24 ~ ~24 ~24 ~ ~24 light[level=15]

# Spawn platform light
$execute positioned $(ax) 303 $(az) run fill ~24 ~ ~24 ~24 ~ ~24 light[level=15]
