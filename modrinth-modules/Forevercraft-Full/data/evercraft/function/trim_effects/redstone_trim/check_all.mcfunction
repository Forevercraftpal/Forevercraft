# Consolidated redstone trim checks — Crop Speed + No Crop Break

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/redstone_trim/redstone_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/redstone_trim/redstone_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/redstone_trim/redstone_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/redstone_trim/redstone_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/redstone_trim/redstone_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/redstone_trim_particle

# Apply
execute if entity @s[tag=!redstone_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/apply_redstone_trim
execute if entity @s[tag=!redstone_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/apply_redstone_trim
execute if entity @s[tag=!redstone_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/apply_redstone_trim
execute if entity @s[tag=!redstone_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/apply_redstone_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/apply_redstone_effect

# Remove
execute if entity @s[tag=redstone_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
execute if entity @s[tag=redstone_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
execute if entity @s[tag=redstone_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
execute if entity @s[tag=redstone_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/redstone_trim/remove_redstone_trim
