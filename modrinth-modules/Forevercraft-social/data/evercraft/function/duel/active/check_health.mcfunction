# Duel — Health Check (runs as each active duelist every tick)
# If health drops to 2 HP or below (1 heart), trigger totem life save

execute store result score @s ec.temp run data get entity @s Health 1
execute if score @s ec.temp matches ..2 run function evercraft:duel/active/totem_save
