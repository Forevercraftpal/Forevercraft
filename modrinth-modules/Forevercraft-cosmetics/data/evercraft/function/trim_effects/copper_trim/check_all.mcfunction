# Consolidated copper trim checks —healthpenalty + Haste/Regen

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/copper_trim/copper_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/copper_trim/copper_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/copper_trim/copper_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/copper_trim/copper_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/copper_trim/copper_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/copper_trim/copper_trim_particle

# Apply
execute if entity @s[tag=!copper_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/copper_trim/apply_copper_trim
execute if entity @s[tag=!copper_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/copper_trim/apply_copper_trim
execute if entity @s[tag=!copper_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/copper_trim/apply_copper_trim
execute if entity @s[tag=!copper_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/copper_trim/apply_copper_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/copper_trim/apply_copper_effect

# Remove
execute if entity @s[tag=copper_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/copper_trim/remove_copper_trim
execute if entity @s[tag=copper_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/copper_trim/remove_copper_trim
execute if entity @s[tag=copper_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/copper_trim/remove_copper_trim
execute if entity @s[tag=copper_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/copper_trim/remove_copper_trim
