# Trim Effects — Per-player dispatcher (called once per player per second)
# OPT: Consolidates 10 separate @a scans into 1 — each check_all runs as @s

# OPT: Early exit for players with no trimmed armor AND no trims from last tick
# Saves ~110 predicate evaluations for non-trim players (the majority)
# The ec.has_any_trim tag persists 1 extra tick to allow removal cleanup
execute unless entity @s[tag=ec.has_any_trim] unless items entity @s armor.head *[trim~{}] unless items entity @s armor.chest *[trim~{}] unless items entity @s armor.legs *[trim~{}] unless items entity @s armor.feet *[trim~{}] run return 0

function evercraft:trim_effects/amethyst_trim/check_all
function evercraft:trim_effects/copper_trim/check_all
function evercraft:trim_effects/diamond_trim/check_all
function evercraft:trim_effects/emerald_trim/check_all
function evercraft:trim_effects/gold_trim/check_all
function evercraft:trim_effects/iron_trim/check_all
function evercraft:trim_effects/lapis_trim/check_all
function evercraft:trim_effects/quartz_trim/check_all
function evercraft:trim_effects/redstone_trim/check_all
function evercraft:trim_effects/resin_trim/check_all

# Update tracking flag based on current armor state
tag @s remove ec.has_any_trim
execute if items entity @s armor.head *[trim~{}] run tag @s add ec.has_any_trim
execute if items entity @s armor.chest *[trim~{}] run tag @s add ec.has_any_trim
execute if items entity @s armor.legs *[trim~{}] run tag @s add ec.has_any_trim
execute if items entity @s armor.feet *[trim~{}] run tag @s add ec.has_any_trim
