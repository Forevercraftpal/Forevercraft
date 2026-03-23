# Phase 4: THE TEMPERING — tick
# Track mob kills since phase start

execute store result score @s ec.gf_score run scoreboard players get @s ach.kills_total
scoreboard players operation @s ec.gf_score -= @s ec.gf_snap

# Respawn waves: if fewer than 3 forge mobs alive, spawn more (every 5s check)
execute store result score #gf_mod ec.var run time query gametime
scoreboard players operation #gf_mod ec.var %= #100 adv.temp
execute if score #gf_mod ec.var matches 0 store result score #gf_alive ec.var if entity @e[type=#minecraft:undead,tag=gf.mob,distance=..50]
execute if score #gf_mod ec.var matches 0 if score #gf_alive ec.var matches ..2 run function evercraft:craftforever/grand_forge/phase/spawn_wave

# Actionbar
scoreboard players operation #gf_mod ec.var %= #20 adv.temp
execute if score #gf_mod ec.var matches 0 run title @s actionbar [{"text":"[Tempering] ","color":"red"},{"score":{"name":"@s","objective":"ec.gf_score"},"color":"yellow","bold":true},{"text":"/","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_target"},"color":"yellow","bold":true},{"text":" kills  |  ","color":"gray"},{"score":{"name":"@s","objective":"ec.gf_timer"},"color":"gold"},{"text":"t left","color":"gray"}]

# Check completion — kill remaining mobs and advance (return to prevent double-fire)
execute if score @s ec.gf_score >= @s ec.gf_target run kill @e[tag=gf.mob,distance=..50]
execute if score @s ec.gf_score >= @s ec.gf_target run return run function evercraft:craftforever/grand_forge/phase/start_5

# Time's up
execute if score @s ec.gf_timer matches ..0 run kill @e[tag=gf.mob,distance=..50]
execute if score @s ec.gf_timer matches ..0 run function evercraft:craftforever/grand_forge/fail
