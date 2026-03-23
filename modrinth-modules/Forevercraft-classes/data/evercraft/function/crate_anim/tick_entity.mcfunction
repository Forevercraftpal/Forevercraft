# Tick crate animation entity — route to tier-specific animate function
# Run as armor_stand with ec.crate_anim tag, at its position

# Route to the correct tier animation
# OPT: return after match to skip remaining tag checks (saves up to 5 checks per entity)
execute if entity @s[tag=ec.common] positioned ~ ~0.5 ~ run return run function evercraft:crate_anim/animate/common
execute if entity @s[tag=ec.uncommon] positioned ~ ~0.5 ~ run return run function evercraft:crate_anim/animate/uncommon
execute if entity @s[tag=ec.rare] positioned ~ ~0.5 ~ run return run function evercraft:crate_anim/animate/rare
execute if entity @s[tag=ec.ornate] positioned ~ ~0.5 ~ run return run function evercraft:crate_anim/animate/ornate
execute if entity @s[tag=ec.exquisite] positioned ~ ~0.5 ~ run return run function evercraft:crate_anim/animate/exquisite
execute if entity @s[tag=ec.mythical] positioned ~ ~0.5 ~ run function evercraft:crate_anim/animate/mythical
