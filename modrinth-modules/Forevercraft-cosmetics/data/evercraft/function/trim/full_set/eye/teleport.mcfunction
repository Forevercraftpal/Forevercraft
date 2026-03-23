# Do the raycast teleport
scoreboard players set @s trim_math1 0
execute at @s anchored eyes positioned ^ ^ ^1 run function evercraft:trim/full_set/eye/raycast
