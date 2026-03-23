# Pharaoh's Fist — Objective Check Router
# Routes to current tier's objective check
execute if score @s ec.sp_tier matches 1 run function evercraft:spirit/progression/objectives/pharaoh_fist/tier2
execute if score @s ec.sp_tier matches 2 run function evercraft:spirit/progression/objectives/pharaoh_fist/tier3
execute if score @s ec.sp_tier matches 3 run function evercraft:spirit/progression/objectives/pharaoh_fist/tier4
execute if score @s ec.sp_tier matches 4 run function evercraft:spirit/progression/objectives/pharaoh_fist/tier5
execute if score @s ec.sp_tier matches 5 run function evercraft:spirit/progression/objectives/pharaoh_fist/tier6
execute if score @s ec.sp_tier matches 6 run function evercraft:spirit/progression/objectives/pharaoh_fist/tier7
