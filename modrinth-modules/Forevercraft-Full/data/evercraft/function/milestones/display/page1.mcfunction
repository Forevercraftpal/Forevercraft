# World Milestones — Page 1: Origins (1/6)

tellraw @s [{text:"\n"},{text:"  World Milestones","color":"gold","bold":true},{text:" — Origins","color":"yellow"}]
tellraw @s [{text:"  ","color":"dark_gray"},{text:"Cooperative goals for the whole realm","color":"gray","italic":true}]
tellraw @s [{text:""}]

# Milestone 1: First Light
execute if score #rm_done_1 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"First Light","color":"yellow"},{"text":" — First patron slain","color":"gray"}]
execute unless score #rm_done_1 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"First Light","color":"white"},{"text":" — Slay a patron mob","color":"gray"}]

# Milestone 3: Brave New World
execute if score #rm_done_3 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Brave New World","color":"yellow"},{"text":" — 5 biomes explored","color":"gray"}]
execute unless score #rm_done_3 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Brave New World","color":"white"},{"text":" — Explore 5 biomes (","color":"gray"},{"score":{"name":"#rm_biomes","objective":"ec.var"},"color":"aqua"},{"text":"/5)","color":"gray"}]

# Milestone 5: The Hunt Begins
execute if score #rm_done_5 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"The Hunt Begins","color":"yellow"},{"text":" — 25 patrons slain","color":"gray"}]
execute unless score #rm_done_5 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"The Hunt Begins","color":"white"},{"text":" — Slay 25 patrons (","color":"gray"},{"score":{"name":"#rm_patrons","objective":"ec.var"},"color":"aqua"},{"text":"/25)","color":"gray"}]

# Milestone 6: Companion Collectors
execute if score #rm_done_6 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Companion Collectors","color":"yellow"},{"text":" — 25 companions","color":"gray"}]
execute unless score #rm_done_6 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Companion Collectors","color":"white"},{"text":" — Discover 25 companions (","color":"gray"},{"score":{"name":"#rm_pets","objective":"ec.var"},"color":"aqua"},{"text":"/25)","color":"gray"}]

# Milestone 7: Seasoned Chefs
execute if score #rm_done_7 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Seasoned Chefs","color":"yellow"},{"text":" — 10 recipes cooked","color":"gray"}]
execute unless score #rm_done_7 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Seasoned Chefs","color":"white"},{"text":" — Cook 10 recipes (","color":"gray"},{"score":{"name":"#rm_recipes","objective":"ec.var"},"color":"aqua"},{"text":"/10)","color":"gray"}]

# Milestone 8: Lore Seekers
execute if score #rm_done_8 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Lore Seekers","color":"yellow"},{"text":" — 50 lore collected","color":"gray"}]
execute unless score #rm_done_8 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Lore Seekers","color":"white"},{"text":" — Collect 50 lore (","color":"gray"},{"score":{"name":"#rm_lore","objective":"ec.var"},"color":"aqua"},{"text":"/50)","color":"gray"}]

# Milestone 9: Slayers of the Deep
execute if score #rm_done_9 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Slayers of the Deep","color":"yellow"},{"text":" — First boss defeated","color":"gray"}]
execute unless score #rm_done_9 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Slayers of the Deep","color":"white"},{"text":" — Defeat a world boss","color":"gray"}]

# Milestone 10: Across All Lands
execute if score #rm_done_10 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Across All Lands","color":"yellow"},{"text":" — All 25 biomes","color":"gray"}]
execute unless score #rm_done_10 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Across All Lands","color":"white"},{"text":" — Visit all biomes (","color":"gray"},{"score":{"name":"#rm_biomes","objective":"ec.var"},"color":"aqua"},{"text":"/25)","color":"gray"}]

# Milestone 11: Legendary Arsenal
execute if score #rm_done_11 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Legendary Arsenal","color":"yellow"},{"text":" — 5 mythical artifacts","color":"gray"}]
execute unless score #rm_done_11 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Legendary Arsenal","color":"white"},{"text":" — Find 5 mythicals (","color":"gray"},{"score":{"name":"#rm_mythicals","objective":"ec.var"},"color":"aqua"},{"text":"/5)","color":"gray"}]

# Milestone 12: Quest Masters
execute if score #rm_done_12 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Quest Masters","color":"yellow"},{"text":" — 100 quests completed","color":"gray"}]
execute unless score #rm_done_12 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Quest Masters","color":"white"},{"text":" — Complete 100 quests (","color":"gray"},{"score":{"name":"#rm_quests","objective":"ec.var"},"color":"aqua"},{"text":"/100)","color":"gray"}]

tellraw @s [{text:""}]
tellraw @s [{text:"  "},{"text":"[Back to Journal]","color":"green","click_event":{"action":"run_command","command":"/trigger jn.view set 1"},"hover_event":{"action":"show_text","value":"Return to Exploration Journal"}},{"text":"  "},{"text":"[Next: Social >>]","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.milestones set 2"},"hover_event":{"action":"show_text","value":"View Social milestones"}}]
tellraw @s [{text:""}]
