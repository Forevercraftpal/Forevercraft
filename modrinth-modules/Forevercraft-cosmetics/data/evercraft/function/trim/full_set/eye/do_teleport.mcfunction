tp @s ~ ~ ~
particle minecraft:reverse_portal ~ ~ ~ 0.5 1 0.5 0.1 50
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
effect give @s resistance 2 4 false
scoreboard players set @s trim_math1 0
