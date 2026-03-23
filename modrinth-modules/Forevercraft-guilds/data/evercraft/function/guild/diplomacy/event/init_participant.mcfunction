# Guild Diplomacy — Initialize a player as event participant
# @s = player in one of the competing guilds

scoreboard players set @s ec.gd_event_active 1
scoreboard players set @s ec.gd_event_score 0
scoreboard players set @s ec.gd_pvp_kills 0

# Capture baselines for delta-based activities
# Activity 3 (diamonds): baseline = current diamond breaks
execute if score #gd_event_activity ec.var matches 3 run scoreboard players operation @s ec.gd_baseline = @s ec.break_diamond_ore
# Activity 4 (patrons): baseline = current patron kills
execute if score #gd_event_activity ec.var matches 4 run scoreboard players operation @s ec.gd_baseline = @s ach.patron_kills
# Activity 5 (crop harvesting): baseline = sum of 4 crop mined stats
execute if score #gd_event_activity ec.var matches 5 run scoreboard players operation @s ec.gd_baseline = @s ec.gd_mined_wheat
execute if score #gd_event_activity ec.var matches 5 run scoreboard players operation @s ec.gd_baseline += @s ec.gd_mined_carrot
execute if score #gd_event_activity ec.var matches 5 run scoreboard players operation @s ec.gd_baseline += @s ec.gd_mined_potato
execute if score #gd_event_activity ec.var matches 5 run scoreboard players operation @s ec.gd_baseline += @s ec.gd_mined_beet
# Activity 9 (mob kills): baseline = current mob kills stat
execute if score #gd_event_activity ec.var matches 9 run scoreboard players operation @s ec.gd_baseline = @s ec.gd_mobkills
