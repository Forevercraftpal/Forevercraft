# World Milestones — Page 4: Exploration & Adventure (4/6)

tellraw @s [{text:"\n"},{text:"  World Milestones","color":"gold","bold":true},{text:" — Adventure","color":"dark_aqua"}]
tellraw @s [{text:"  ","color":"dark_gray"},{text:"Dreams, bounties, and exploration","color":"gray","italic":true}]
tellraw @s [{text:""}]

# Milestone 23: Dream Walkers
execute if score #rm_done_23 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Dream Walkers","color":"yellow"},{"text":" — 50 dream completions","color":"gray"}]
execute unless score #rm_done_23 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Dream Walkers","color":"white"},{"text":" — Complete 50 dreams (","color":"gray"},{"score":{"name":"#rm_dreams","objective":"ec.var"},"color":"aqua"},{"text":"/50)","color":"gray"}]

# Milestone 24: Bounty Board Legends
execute if score #rm_done_24 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Bounty Board Legends","color":"yellow"},{"text":" — 100 bounties","color":"gray"}]
execute unless score #rm_done_24 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Bounty Board Legends","color":"white"},{"text":" — Complete 100 bounties (","color":"gray"},{"score":{"name":"#rm_bounties","objective":"ec.var"},"color":"aqua"},{"text":"/100)","color":"gray"}]

# Milestone 25: The Expedition
execute if score #rm_done_25 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"The Expedition","color":"yellow"},{"text":" — 50% explored 15+ biomes","color":"gray"}]
execute unless score #rm_done_25 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"The Expedition","color":"white"},{"text":" — 50% of players explore 15+ biomes","color":"gray"}]

# Milestone 26: Hearthstone Haven
execute if score #rm_done_26 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Hearthstone Haven","color":"yellow"},{"text":" — 75% have homes","color":"gray"}]
execute unless score #rm_done_26 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Hearthstone Haven","color":"white"},{"text":" — 75% of players have a home","color":"gray"}]

tellraw @s [{text:""}]
tellraw @s [{text:"  "},{"text":"[Back to Journal]","color":"green","click_event":{"action":"run_command","command":"/trigger jn.view set 1"},"hover_event":{"action":"show_text","value":"Return to Exploration Journal"}},{"text":"  "},{"text":"[<< Guild]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.milestones set 3"},"hover_event":{"action":"show_text","value":"View Guild"}},{"text":"  "},{"text":"[Next: Combat >>]","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.milestones set 5"},"hover_event":{"action":"show_text","value":"View Combat milestones"}}]
tellraw @s [{text:""}]
