# Consolidated emerald trim checks — Dodge + Speed

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/emerald_trim/emerald_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/emerald_trim/emerald_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/emerald_trim/emerald_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/emerald_trim/emerald_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/emerald_trim/emerald_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/emerald_trim_particle

# Apply
execute if entity @s[tag=!emerald_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/apply_emerald_trim
execute if entity @s[tag=!emerald_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/apply_emerald_trim
execute if entity @s[tag=!emerald_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/apply_emerald_trim
execute if entity @s[tag=!emerald_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/apply_emerald_trim

# Full set bonus
execute if score #te_head ec.temp matches 1 if score #te_chest ec.temp matches 1 if score #te_legs ec.temp matches 1 if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/apply_emerald_effect

# Remove
execute if entity @s[tag=emerald_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
execute if entity @s[tag=emerald_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
execute if entity @s[tag=emerald_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
execute if entity @s[tag=emerald_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/emerald_trim/remove_emerald_trim
