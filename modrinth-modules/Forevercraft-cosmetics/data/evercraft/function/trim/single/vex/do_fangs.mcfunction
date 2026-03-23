# Roll for fangs and apply cooldown
tag @s add vex_fangs_cooldown
schedule function evercraft:trim/single/vex/remove_cooldown 10t
execute store result score @s trim_coin_flip run random value 1..10
execute if score @s trim_coin_flip matches 1 run function evercraft:trim/single/vex/evoker_fangs
