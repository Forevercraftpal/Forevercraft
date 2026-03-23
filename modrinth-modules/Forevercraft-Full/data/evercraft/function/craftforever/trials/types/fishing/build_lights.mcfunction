# Fishing Trial — Ceiling lights
# Macro file — run with storage evercraft:trials
# T7 = dark fishing (no lights), T8+ = lights

# Standard lights for T1-T6 (grid pattern in ceiling at Y=323)
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~5 ~ ~5 ~10 ~ ~10 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~15 ~ ~5 ~20 ~ ~10 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~25 ~ ~5 ~30 ~ ~10 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~35 ~ ~5 ~40 ~ ~10 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~5 ~ ~15 ~10 ~ ~20 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~15 ~ ~15 ~20 ~ ~20 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~25 ~ ~15 ~30 ~ ~20 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~35 ~ ~15 ~40 ~ ~20 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~5 ~ ~25 ~10 ~ ~30 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~15 ~ ~25 ~20 ~ ~30 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~25 ~ ~25 ~30 ~ ~30 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~35 ~ ~25 ~40 ~ ~30 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~5 ~ ~35 ~10 ~ ~40 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~15 ~ ~35 ~20 ~ ~40 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~25 ~ ~35 ~30 ~ ~40 light[level=15]
$execute if score @s ec.tt_tier matches 1..6 positioned $(ax) 323 $(az) run fill ~35 ~ ~35 ~40 ~ ~40 light[level=15]

# T8-T10 full ceiling lights
$execute if score @s ec.tt_tier matches 8..10 positioned $(ax) 323 $(az) run fill ~5 ~ ~5 ~42 ~ ~42 light[level=15]
