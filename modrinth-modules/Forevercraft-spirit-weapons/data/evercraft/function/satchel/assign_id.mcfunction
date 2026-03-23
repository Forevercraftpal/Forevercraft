# Satchel — Assign unique ID to player
scoreboard players add #next_satchel_id ec.var 1
scoreboard players operation @s ec.satchel_id = #next_satchel_id ec.var
