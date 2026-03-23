# Close quest preview without accepting
# Run as player
execute unless score @s ec.qp_active matches 1 run return run tellraw @s [{"text":"[Forevercraft] ","color":"gold"},{"text":"No preview active.","color":"red"}]

scoreboard players set @s ec.qp_active 0
tellraw @s ["",{"text":"[Forevercraft] ","color":"gold"},{"text":"Preview closed.","color":"gray"}]
