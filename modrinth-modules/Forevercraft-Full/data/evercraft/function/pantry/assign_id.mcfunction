# Pantry — Assign unique ID to player
scoreboard players add #next_pantry_id ec.var 1
scoreboard players operation @s ec.pantry_id = #next_pantry_id ec.var
