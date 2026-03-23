tp ~ ~-2000 ~
kill @s
# Achievement tracking
scoreboard players add @p ach.patron_kills 1

# Guild Diplomacy Event: Patron slaying scoring
execute if score #gd_event_active ec.var matches 1 if score #gd_event_activity ec.var matches 4 as @p if score @s ec.gd_event_active matches 1 run scoreboard players add @s ec.gd_event_score 1
