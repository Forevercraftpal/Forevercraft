# Phase 1: THE GATHERING — tick
# Track blocks mined since phase start

# Update progress
execute store result score @s ec.gf_score run scoreboard players get @s ach.blocks_mined
scoreboard players operation @s ec.gf_score -= @s ec.gf_snap

# Actionbar progress display (every 20 ticks)
execute store result score #gf_mod ec.var run time query gametime
scoreboard players operation #gf_mod ec.var %= #20 adv.temp
execute if score #gf_mod ec.var matches 0 run title @s actionbar [{"text":"[Gathering] ","color":"green"},{"score":{"name":"@s","objective":"ec.gf_score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"yellow","bold":true},{"text":" blocks  |  ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_timer"},"color":"gold"},{"text":"t left","color":"gray"}]

# Check completion (return to prevent double-fire with fail)
execute if score @s ec.gf_score >= @s ec.gf_target run return run function evercraft:craftforever/grand_forge/phase/start_2

# Check time's up
execute if score @s ec.gf_timer matches ..0 run function evercraft:craftforever/grand_forge/fail
