# Consolidated diamond trim checks — Companion Scaling + Slow Fall + Night Vision

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/diamond_trim/diamond_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/diamond_trim/diamond_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/diamond_trim/diamond_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/diamond_trim/diamond_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/diamond_trim/diamond_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/diamond_trim_particle

# Apply
execute if entity @s[tag=!diamond_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/apply_diamond_trim
execute if entity @s[tag=!diamond_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/apply_diamond_trim
execute if entity @s[tag=!diamond_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/apply_diamond_trim
execute if entity @s[tag=!diamond_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/apply_diamond_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/apply_diamond_effect

# Remove
execute if entity @s[tag=diamond_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
execute if entity @s[tag=diamond_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
execute if entity @s[tag=diamond_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
execute if entity @s[tag=diamond_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/diamond_trim/remove_diamond_trim
