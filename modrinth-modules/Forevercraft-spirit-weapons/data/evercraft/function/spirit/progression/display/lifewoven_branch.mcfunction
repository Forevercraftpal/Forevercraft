# Lifewoven Branch — Progress Display
tellraw @s [{"text":"═══ ","color":"green"},{"text":"Lifewoven Branch","color":"green","bold":true},{"text":" — ","color":"dark_gray"},{"text":"","color":"gray"},{"score":{"name":"@s","objective":"ec.sp_eff"}},{"text":"% Effectiveness","color":"gray"},{"text":" ═══","color":"green"}]
execute if score @s ec.sp_tier matches 1 run tellraw @s [{"text":"  Common → Uncommon: ","color":"green"},{"score":{"name":"@s","objective":"ec.sp_obj_done"}},{"text":"/5 objectives","color":"gray"}]
execute if score @s ec.sp_tier matches 2 run tellraw @s [{"text":"  Uncommon → Rare: ","color":"aqua"},{"score":{"name":"@s","objective":"ec.sp_obj_done"}},{"text":"/6 objectives","color":"gray"}]
execute if score @s ec.sp_tier matches 3 run tellraw @s [{"text":"  Rare → Ornate: ","color":"dark_purple"},{"score":{"name":"@s","objective":"ec.sp_obj_done"}},{"text":"/7 objectives","color":"gray"}]
execute if score @s ec.sp_tier matches 4 run tellraw @s [{"text":"  Ornate → Exquisite: ","color":"gold"},{"score":{"name":"@s","objective":"ec.sp_obj_done"}},{"text":"/8 objectives","color":"gray"}]
execute if score @s ec.sp_tier matches 5 run tellraw @s [{"text":"  Exquisite → Mythical: ","color":"light_purple"},{"score":{"name":"@s","objective":"ec.sp_obj_done"}},{"text":"/9 objectives","color":"gray"}]
execute if score @s ec.sp_tier matches 6 run tellraw @s [{"text":"  Mythical → Spirit: ","color":"light_purple"},{"score":{"name":"@s","objective":"ec.sp_obj_done"}},{"text":"/10 objectives","color":"gray"}]
execute if score @s ec.sp_tier matches 7 run tellraw @s [{"text":"  ★ SPIRIT TIER — Maximum Power ★","color":"light_purple","bold":true}]
execute if score @s ec.sp_tier matches 1 run function evercraft:spirit/progression/display/lifewoven_branch_t2
execute if score @s ec.sp_tier matches 2 run function evercraft:spirit/progression/display/lifewoven_branch_t3
execute if score @s ec.sp_tier matches 3 run function evercraft:spirit/progression/display/lifewoven_branch_t4
execute if score @s ec.sp_tier matches 4 run function evercraft:spirit/progression/display/lifewoven_branch_t5
execute if score @s ec.sp_tier matches 5 run function evercraft:spirit/progression/display/lifewoven_branch_t6
execute if score @s ec.sp_tier matches 6 run function evercraft:spirit/progression/display/lifewoven_branch_t7
tellraw @s [{"text":"═══════════════════════════════════","color":"green"}]
