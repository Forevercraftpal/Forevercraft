# Team Duel — Check Health (runs as each non-eliminated duelist)
execute store result score #td_hp ec.temp run data get entity @s Health 1
execute if score #td_hp ec.temp matches ..2 run function evercraft:duel/team/eliminate
