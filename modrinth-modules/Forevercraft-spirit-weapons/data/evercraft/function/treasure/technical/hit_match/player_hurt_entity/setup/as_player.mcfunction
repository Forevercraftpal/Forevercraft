tag @s add ec.player
execute as @e[predicate=evercraft:treasure/not_setup] run function evercraft:treasure/technical/hit_match/player_hurt_entity/setup/as_entity
tag @s remove ec.player
execute if score #found ec.id matches 0 run scoreboard players set #found ec.id 2