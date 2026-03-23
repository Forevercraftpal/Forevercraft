# Arbiter — Wind Push (Phase 2)
# Called as each participant, at their position
# Random wind gusts push players around every 40 ticks

scoreboard players add @s ec.rd_wind_tick 1
execute unless score @s ec.rd_wind_tick matches 40.. run return 0
scoreboard players set @s ec.rd_wind_tick 0

# Random push direction
execute store result score #rd_temp ec.var run random value 1..4

# Push in a random cardinal direction
execute if score #rd_temp ec.var matches 1 run tp @s ~0.8 ~ ~0
execute if score #rd_temp ec.var matches 2 run tp @s ~-0.8 ~ ~0
execute if score #rd_temp ec.var matches 3 run tp @s ~0 ~ ~0.8
execute if score #rd_temp ec.var matches 4 run tp @s ~0 ~ ~-0.8

# VFX
particle minecraft:cloud ~ ~0.5 ~ 0.3 0.2 0.3 0.05 3
