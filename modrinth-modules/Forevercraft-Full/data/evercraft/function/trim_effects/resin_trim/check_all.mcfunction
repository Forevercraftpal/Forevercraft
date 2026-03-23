# Consolidated resin trim checks — Absorption Hearts

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/resin_trim/resin_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/resin_trim/resin_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/resin_trim/resin_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/resin_trim/resin_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/resin_trim/resin_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/resin_trim/resin_trim_particle

# Apply
execute if entity @s[tag=!resin_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/resin_trim/apply_resin_trim
execute if entity @s[tag=!resin_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/resin_trim/apply_resin_trim
execute if entity @s[tag=!resin_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/resin_trim/apply_resin_trim
execute if entity @s[tag=!resin_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/resin_trim/apply_resin_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/resin_trim/apply_resin_effect

# Remove
execute if entity @s[tag=resin_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/resin_trim/remove_resin_trim
execute if entity @s[tag=resin_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/resin_trim/remove_resin_trim
execute if entity @s[tag=resin_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/resin_trim/remove_resin_trim
execute if entity @s[tag=resin_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/resin_trim/remove_resin_trim
