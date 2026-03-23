particle poof ~ ~ ~ 0 0 0 0 1 force

execute store result entity @s Motion[0] double 0.001 run data get entity @s Motion[0] -1000
execute store result entity @s Motion[1] double 0.001 run data get entity @s Motion[1] -1000
execute store result entity @s Motion[2] double 0.001 run data get entity @s Motion[2] -1000

execute store result entity @s power[0] double 0.001 run data get entity @s power[0] -1000
execute store result entity @s power[1] double 0.001 run data get entity @s power[1] -1000
execute store result entity @s power[2] double 0.001 run data get entity @s power[2] -1000