# Respawn player at arena center (fell out of bounds)
execute store result storage evercraft:trials arena_x int 1 run scoreboard players get @s ec.tt_arena_x
execute store result storage evercraft:trials arena_z int 1 run scoreboard players get @s ec.tt_arena_z
function evercraft:craftforever/trials/teleport_to_arena with storage evercraft:trials
tellraw @s {"text":"You fell out of the arena!","color":"red"}
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.5 1.0
