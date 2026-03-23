# Phase 2: THE SMELTING — tick
# Track meals cooked since phase start

execute store result score @s ec.gf_score run scoreboard players get @s ach.meals_cooked
scoreboard players operation @s ec.gf_score -= @s ec.gf_snap

# Actionbar
execute store result score #gf_mod ec.var run time query gametime
scoreboard players operation #gf_mod ec.var %= #20 adv.temp
execute if score #gf_mod ec.var matches 0 run title @s actionbar [{"text":"[Smelting] ","color":"gold"},{"score":{"name":"@s","objective":"ec.gf_score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"yellow","bold":true},{"text":" meals  |  ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_timer"},"color":"gold"},{"text":"t left","color":"gray"}]

execute if score @s ec.gf_score >= @s ec.gf_target run return run function evercraft:craftforever/grand_forge/phase/start_3
execute if score @s ec.gf_timer matches ..0 run function evercraft:craftforever/grand_forge/fail
