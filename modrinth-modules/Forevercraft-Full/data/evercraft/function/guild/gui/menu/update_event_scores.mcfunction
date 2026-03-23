# Guild Menu — Update event score displays without respawning
# @s = player on event page. Updates score text_displays and status line.

# Update score displays using data modify (scores are read from ec.var at render time via {score:})
# Score displays use {score:} which auto-resolves — just re-set the same text to force refresh
execute at @s as @e[type=text_display,tag=ec.guild_ev_score_a,distance=..5,limit=1] run function evercraft:guild/gui/menu/update_event_score_a with storage evercraft:guild event
execute at @s as @e[type=text_display,tag=ec.guild_ev_score_b,distance=..5,limit=1] run function evercraft:guild/gui/menu/update_event_score_b with storage evercraft:guild event

# Update status line
scoreboard players set #ev_status ec.temp 0
execute if score #gd_score_a ec.var > #gd_score_b ec.var if score @s ec.guild_id = #gd_event_guild_a ec.var run scoreboard players set #ev_status ec.temp 1
execute if score #gd_score_b ec.var > #gd_score_a ec.var if score @s ec.guild_id = #gd_event_guild_b ec.var run scoreboard players set #ev_status ec.temp 1
execute if score #gd_score_a ec.var > #gd_score_b ec.var if score @s ec.guild_id = #gd_event_guild_b ec.var run scoreboard players set #ev_status ec.temp 2
execute if score #gd_score_b ec.var > #gd_score_a ec.var if score @s ec.guild_id = #gd_event_guild_a ec.var run scoreboard players set #ev_status ec.temp 2
execute if score #gd_score_a ec.var = #gd_score_b ec.var run scoreboard players set #ev_status ec.temp 3

execute at @s if score #ev_status ec.temp matches 1 as @e[type=text_display,tag=ec.guild_ev_status,distance=..5,limit=1] run data modify entity @s text set value {text:"Your guild is winning!",color:"green"}
execute at @s if score #ev_status ec.temp matches 2 as @e[type=text_display,tag=ec.guild_ev_status,distance=..5,limit=1] run data modify entity @s text set value {text:"Your guild is losing!",color:"red"}
execute at @s if score #ev_status ec.temp matches 3 as @e[type=text_display,tag=ec.guild_ev_status,distance=..5,limit=1] run data modify entity @s text set value {text:"It's a tie!",color:"yellow"}
execute at @s if score #ev_status ec.temp matches 0 as @e[type=text_display,tag=ec.guild_ev_status,distance=..5,limit=1] run data modify entity @s text set value {text:"Spectating",color:"gray"}
