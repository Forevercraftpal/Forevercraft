# Roll for vex spawn and apply cooldown
tag @s add vex_spawn_cooldown
schedule function evercraft:trim/full_set/vex/remove_cooldown 10t
execute store result score @s trim_coin_flip run random value 1..2
execute if score @s trim_coin_flip matches 1 run function evercraft:trim/full_set/vex/spawn_ally
