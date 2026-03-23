# Enchantment Dream Rate — check highest fortune/looting/luck level on mainhand
# OPT: Uses return run for early exit (was unless cascade = ~19 predicate evals, now ~8-10)
# +0.25 dream rate per enchantment level (max level 10 = +2.5)
execute if predicate evercraft:enchant_dream/level_10 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_10 run return run attribute @s luck modifier add ec_enchant_dream_luck 2.5 add_value
execute if predicate evercraft:enchant_dream/level_9 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_9 run return run attribute @s luck modifier add ec_enchant_dream_luck 2.25 add_value
execute if predicate evercraft:enchant_dream/level_8 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_8 run return run attribute @s luck modifier add ec_enchant_dream_luck 2.0 add_value
execute if predicate evercraft:enchant_dream/level_7 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_7 run return run attribute @s luck modifier add ec_enchant_dream_luck 1.75 add_value
execute if predicate evercraft:enchant_dream/level_6 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_6 run return run attribute @s luck modifier add ec_enchant_dream_luck 1.5 add_value
execute if predicate evercraft:enchant_dream/level_5 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_5 run return run attribute @s luck modifier add ec_enchant_dream_luck 1.25 add_value
execute if predicate evercraft:enchant_dream/level_4 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_4 run return run attribute @s luck modifier add ec_enchant_dream_luck 1.0 add_value
execute if predicate evercraft:enchant_dream/level_3 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_3 run return run attribute @s luck modifier add ec_enchant_dream_luck 0.75 add_value
execute if predicate evercraft:enchant_dream/level_2 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_2 run return run attribute @s luck modifier add ec_enchant_dream_luck 0.5 add_value
execute if predicate evercraft:enchant_dream/level_1 run tag @s add ec.has_time_dr
execute if predicate evercraft:enchant_dream/level_1 run return run attribute @s luck modifier add ec_enchant_dream_luck 0.25 add_value
