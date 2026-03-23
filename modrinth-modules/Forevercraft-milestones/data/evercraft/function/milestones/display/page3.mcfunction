# World Milestones — Page 3: Guild & Warfare (3/6)

tellraw @s [{text:"\n"},{text:"  World Milestones","color":"gold","bold":true},{text:" — Guild & Warfare","color":"dark_red"}]
tellraw @s [{text:"  ","color":"dark_gray"},{text:"Guilds, alliances, and conquest","color":"gray","italic":true}]
tellraw @s [{text:""}]

# Milestone 18: Banner Raised
execute if score #rm_done_18 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Banner Raised","color":"yellow"},{"text":" — First guild created","color":"gray"}]
execute unless score #rm_done_18 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Banner Raised","color":"white"},{"text":" — Create a guild","color":"gray"}]

# Milestone 19: Declaration of War
execute if score #rm_done_19 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Declaration of War","color":"yellow"},{"text":" — First guild war","color":"gray"}]
execute unless score #rm_done_19 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Declaration of War","color":"white"},{"text":" — Declare a guild war","color":"gray"}]

# Milestone 20: United Front
execute if score #rm_done_20 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"United Front","color":"yellow"},{"text":" — First alliance","color":"gray"}]
execute unless score #rm_done_20 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"United Front","color":"white"},{"text":" — Form a guild alliance","color":"gray"}]

# Milestone 21: Conquest
execute if score #rm_done_21 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Conquest","color":"yellow"},{"text":" — A guild won 3 wars","color":"gray"}]
execute unless score #rm_done_21 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Conquest","color":"white"},{"text":" — A guild wins 3 wars (best: ","color":"gray"},{"score":{"name":"#rm_guild_max_wins","objective":"ec.var"},"color":"aqua"},{"text":"/3)","color":"gray"}]

# Milestone 22: Guild Dominion
execute if score #rm_done_22 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Guild Dominion","color":"yellow"},{"text":" — 10,000 contributions","color":"gray"}]
execute unless score #rm_done_22 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Guild Dominion","color":"white"},{"text":" — 10,000 total contributions (","color":"gray"},{"score":{"name":"#rm_guild_contrib","objective":"ec.var"},"color":"aqua"},{"text":")","color":"gray"}]

tellraw @s [{text:""}]
tellraw @s [{text:"  "},{"text":"[Back to Journal]","color":"green","click_event":{"action":"run_command","command":"/trigger jn.view set 1"},"hover_event":{"action":"show_text","value":"Return to Exploration Journal"}},{"text":"  "},{"text":"[<< Social]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.milestones set 2"},"hover_event":{"action":"show_text","value":"View Social"}},{"text":"  "},{"text":"[Next: Adventure >>]","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.milestones set 4"},"hover_event":{"action":"show_text","value":"View Adventure milestones"}}]
tellraw @s [{text:""}]
