# World Milestones — Page 5: Combat & Progression (5/6)

tellraw @s [{text:"\n"},{text:"  World Milestones","color":"gold","bold":true},{text:" — Combat","color":"red"}]
tellraw @s [{text:"  ","color":"dark_gray"},{text:"Patron hunts, duels, and ascension","color":"gray","italic":true}]
tellraw @s [{text:""}]

# Milestone 27: The Hundred
execute if score #rm_done_27 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"The Hundred","color":"yellow"},{"text":" — 100 patrons slain","color":"gray"}]
execute unless score #rm_done_27 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"The Hundred","color":"white"},{"text":" — Slay 100 patrons (","color":"gray"},{"score":{"name":"#rm_patrons","objective":"ec.var"},"color":"aqua"},{"text":"/100)","color":"gray"}]

# Milestone 28: Ascended
execute if score #rm_done_28 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Ascended","color":"yellow"},{"text":" — 50% reached DR 20+","color":"gray"}]
execute unless score #rm_done_28 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Ascended","color":"white"},{"text":" — 50% of players reach DR 20+","color":"gray"}]

# Milestone 29: Duel of Legends
execute if score #rm_done_29 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Duel of Legends","color":"yellow"},{"text":" — 50 duels completed","color":"gray"}]
execute unless score #rm_done_29 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Duel of Legends","color":"white"},{"text":" — Complete 50 duels (","color":"gray"},{"score":{"name":"#rm_duels","objective":"ec.var"},"color":"aqua"},{"text":"/50)","color":"gray"}]

# Milestone 30: Party of Heroes
execute if score #rm_done_30 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Party of Heroes","color":"yellow"},{"text":" — Party boss kill","color":"gray"}]
execute unless score #rm_done_30 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Party of Heroes","color":"white"},{"text":" — 4+ party defeats a boss","color":"gray"}]

tellraw @s [{text:""}]
tellraw @s [{text:"  "},{"text":"[Back to Journal]","color":"green","click_event":{"action":"run_command","command":"/trigger jn.view set 1"},"hover_event":{"action":"show_text","value":"Return to Exploration Journal"}},{"text":"  "},{"text":"[<< Adventure]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.milestones set 4"},"hover_event":{"action":"show_text","value":"View Adventure"}},{"text":"  "},{"text":"[Next: Mastery >>]","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.milestones set 6"},"hover_event":{"action":"show_text","value":"View Mastery milestones"}}]
tellraw @s [{text:""}]
