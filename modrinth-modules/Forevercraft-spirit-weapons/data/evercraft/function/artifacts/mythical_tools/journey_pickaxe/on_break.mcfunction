# Journey Pickaxe — Block Broken! Route to mining mode
# Executed at broken block position (marker context)
# Sneaking = vein mining (ores only), Standing = 3x3 plane (any mineable)
tag @s add ec_pick_broken

# Find the nearest player holding the Journey Pickaxe
# Sneak (shift) = vein mine connected ores, Normal = 3x3 facing-aware plane

# Sneaking → Vein Mining
execute as @p[distance=..6,predicate=evercraft:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/vein_start

# Standing → 3x3 Area Mining
execute as @p[distance=..6,predicate=!evercraft:is_sneaking] if items entity @s weapon.mainhand *[custom_data~{artifact:"journey_pickaxe"}] run function evercraft:artifacts/mythical_tools/journey_pickaxe/area_start

# Particles
particle minecraft:sweep_attack ~ ~0.5 ~ 0.5 0.3 0.5 0 2
particle minecraft:enchant ~ ~0.5 ~ 0.5 0.5 0.5 1 10
