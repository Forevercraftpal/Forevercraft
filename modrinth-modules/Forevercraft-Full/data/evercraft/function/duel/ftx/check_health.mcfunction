# First-to-X — Check Health (runs as each duelist)
execute store result score #ftx_hp ec.temp run data get entity @s Health 1
execute if score #ftx_hp ec.temp matches ..2 run function evercraft:duel/ftx/on_kill
