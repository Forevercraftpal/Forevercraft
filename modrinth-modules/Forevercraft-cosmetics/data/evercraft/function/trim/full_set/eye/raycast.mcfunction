scoreboard players add @s trim_math1 1
execute unless block ~ ~ ~ #minecraft:replaceable unless block ~ ~ ~ water unless block ~ ~ ~ lava positioned ^ ^ ^-1 run function evercraft:trim/full_set/eye/do_teleport
execute if score @s trim_math1 matches 1..50 if block ~ ~ ~ #minecraft:replaceable positioned ^ ^ ^1 run function evercraft:trim/full_set/eye/raycast
execute if score @s trim_math1 matches 1..50 if block ~ ~ ~ water positioned ^ ^ ^1 run function evercraft:trim/full_set/eye/raycast
execute if score @s trim_math1 matches 1..50 if block ~ ~ ~ lava positioned ^ ^ ^1 run function evercraft:trim/full_set/eye/raycast
execute if score @s trim_math1 matches 51 run function evercraft:trim/full_set/eye/do_teleport
