# Nite — Objective Check Router
# Routes to current tier's objective check
execute if score @s ec.sp_tier matches 1 run function evercraft:spirit/progression/objectives/nite/tier2
execute if score @s ec.sp_tier matches 2 run function evercraft:spirit/progression/objectives/nite/tier3
execute if score @s ec.sp_tier matches 3 run function evercraft:spirit/progression/objectives/nite/tier4
execute if score @s ec.sp_tier matches 4 run function evercraft:spirit/progression/objectives/nite/tier5
execute if score @s ec.sp_tier matches 5 run function evercraft:spirit/progression/objectives/nite/tier6
execute if score @s ec.sp_tier matches 6 run function evercraft:spirit/progression/objectives/nite/tier7
