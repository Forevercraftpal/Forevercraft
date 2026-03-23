# Consolidated quartz trim checks — XP Gain

# OPT: Cache per-slot predicate results into scores (saves ~8 redundant predicate evaluations)
execute store success score #te_any ec.temp if predicate evercraft:trim_effects/trim/quartz_trim/quartz_trim
execute store success score #te_head ec.temp if predicate evercraft:trim_effects/trim/quartz_trim/quartz_head
execute store success score #te_chest ec.temp if predicate evercraft:trim_effects/trim/quartz_trim/quartz_chest
execute store success score #te_legs ec.temp if predicate evercraft:trim_effects/trim/quartz_trim/quartz_legs
execute store success score #te_feet ec.temp if predicate evercraft:trim_effects/trim/quartz_trim/quartz_feet

# Particles
execute if score #te_any ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/quartz_trim_particle

# Apply
execute if entity @s[tag=!quartz_head] if score #te_head ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/apply_quartz_trim
execute if entity @s[tag=!quartz_chest] if score #te_chest ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/apply_quartz_trim
execute if entity @s[tag=!quartz_legs] if score #te_legs ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/apply_quartz_trim
execute if entity @s[tag=!quartz_feet] if score #te_feet ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/apply_quartz_trim

# Remove
execute if entity @s[tag=quartz_head] unless score #te_head ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
execute if entity @s[tag=quartz_chest] unless score #te_chest ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
execute if entity @s[tag=quartz_legs] unless score #te_legs ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
execute if entity @s[tag=quartz_feet] unless score #te_feet ec.temp matches 1 run function evercraft:trim_effects/quartz_trim/remove_quartz_trim
