# Roll for lightning and apply cooldown
tag @s add bolt_cooldown
schedule function evercraft:trim/full_set/bolt/remove_cooldown 10t
execute store result score @s trim_coin_flip run random value 1..10
execute if score @s trim_coin_flip matches 1 run function evercraft:trim/full_set/bolt/lightning
