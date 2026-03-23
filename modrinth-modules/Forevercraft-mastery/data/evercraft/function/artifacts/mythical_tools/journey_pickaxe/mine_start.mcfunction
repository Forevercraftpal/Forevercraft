# Journey Pickaxe - Mine Start
# Called when player breaks a block while holding Journey Pickaxe
# Sneaking = vein mining (ores), Standing = 3x3 area mining

# Store the ore type for vein mining (same ore type check)
data modify storage evercraft:journey_pickaxe target_block set from block ~ ~ ~

# Sneaking → vein mine, Standing → 3x3 area
execute if predicate evercraft:is_sneaking run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_start
execute unless predicate evercraft:is_sneaking run function evercraft:artifacts/mythical_tools/journey_pickaxe/area_start
