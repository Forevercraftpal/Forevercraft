# Consolidated iron trim checks — Damage + Slowness

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/iron_trim/iron_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/iron_trim/iron_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/iron_trim/iron_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/iron_trim/iron_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/iron_trim/iron_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/iron_trim/iron_trim_particle

# Apply
execute if entity @s[tag=!iron_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/iron_trim/apply_iron_trim
execute if entity @s[tag=!iron_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/iron_trim/apply_iron_trim
execute if entity @s[tag=!iron_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/iron_trim/apply_iron_trim
execute if entity @s[tag=!iron_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/iron_trim/apply_iron_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/iron_trim/apply_iron_effect

# Remove
execute if entity @s[tag=iron_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/iron_trim/remove_iron_trim
execute if entity @s[tag=iron_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/iron_trim/remove_iron_trim
execute if entity @s[tag=iron_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/iron_trim/remove_iron_trim
execute if entity @s[tag=iron_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/iron_trim/remove_iron_trim
