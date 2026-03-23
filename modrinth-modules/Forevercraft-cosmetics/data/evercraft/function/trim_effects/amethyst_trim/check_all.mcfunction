# Consolidated amethyst trim checks — Dream Rate + Block Break Speed

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/amethyst_trim/amethyst_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/amethyst_trim_particle

# Apply
execute if entity @s[tag=!amethyst_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim
execute if entity @s[tag=!amethyst_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim
execute if entity @s[tag=!amethyst_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim
execute if entity @s[tag=!amethyst_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/apply_amethyst_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/apply_amethyst_effect

# Remove
execute if entity @s[tag=amethyst_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
execute if entity @s[tag=amethyst_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
execute if entity @s[tag=amethyst_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
execute if entity @s[tag=amethyst_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/amethyst_trim/remove_amethyst_trim
