tag @s remove ec.light
attribute @s gravity modifier remove ec.light
attribute @s safe_fall_distance modifier remove ec.light

playsound minecraft:entity.breeze.death player @s ~ ~ ~ 0.2 2

scoreboard players set @s ec.light 0