# Crimson Decay — removes Crimson Tempo attack speed stacks
execute as @a run attribute @s attack_speed modifier remove evercraft:crimson_tempo
scoreboard players set @a ec.crimson_stacks 0
