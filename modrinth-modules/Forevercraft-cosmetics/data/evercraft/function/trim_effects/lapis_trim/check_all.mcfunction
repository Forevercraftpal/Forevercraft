# Consolidated lapis trim checks — Lure + Water Breathing

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/lapis_trim/lapis_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/lapis_trim/lapis_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/lapis_trim/lapis_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/lapis_trim/lapis_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/lapis_trim/lapis_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/lapis_trim_particle

# Apply
execute if entity @s[tag=!lapis_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/apply_lapis_trim
execute if entity @s[tag=!lapis_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/apply_lapis_trim
execute if entity @s[tag=!lapis_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/apply_lapis_trim
execute if entity @s[tag=!lapis_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/apply_lapis_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/apply_lapis_effect

# Remove
execute if entity @s[tag=lapis_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
execute if entity @s[tag=lapis_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
execute if entity @s[tag=lapis_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
execute if entity @s[tag=lapis_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/lapis_trim/remove_lapis_trim
