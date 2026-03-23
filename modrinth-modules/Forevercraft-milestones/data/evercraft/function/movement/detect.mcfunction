# Shared Movement Detection — Per Player
# Reads Pos[0] and Pos[2] once, sets ec.moving for all consumers
# Scale 10 for sub-block precision (detects 0.1 block movement)

execute store result score #mx ec.temp run data get entity @s Pos[0] 10
execute store result score #mz ec.temp run data get entity @s Pos[2] 10

# On movement detected, set counter to 5 (persists 5 seconds after last movement)
execute unless score #mx ec.temp = @s ec.move_lastx run scoreboard players set @s ec.moving 5
execute unless score #mz ec.temp = @s ec.move_lastz run scoreboard players set @s ec.moving 5
scoreboard players operation @s ec.move_lastx = #mx ec.temp
scoreboard players operation @s ec.move_lastz = #mz ec.temp

# Decay movement counter by 1 per second (0 = fully stopped)
execute if score @s ec.moving matches 1.. run scoreboard players remove @s ec.moving 1
