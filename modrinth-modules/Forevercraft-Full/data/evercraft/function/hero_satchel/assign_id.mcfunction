# Hero's Satchel — Assign unique ID to player
scoreboard players add #next_hsatch_id ec.var 1
scoreboard players operation @s ec.hsatch_id = #next_hsatch_id ec.var
