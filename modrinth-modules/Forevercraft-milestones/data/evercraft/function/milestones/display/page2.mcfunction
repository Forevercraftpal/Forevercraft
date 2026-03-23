# World Milestones — Page 2: Social (2/6)

tellraw @s [{text:"\n"},{text:"  World Milestones","color":"gold","bold":true},{text:" — Social","color":"#FF69B4"}]
tellraw @s [{text:"  ","color":"dark_gray"},{text:"Friendship, love, and family","color":"gray","italic":true}]
tellraw @s [{text:""}]

# Milestone 13: First Friends
execute if score #rm_done_13 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"First Friends","color":"yellow"},{"text":" — 10 friendships formed","color":"gray"}]
execute unless score #rm_done_13 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"First Friends","color":"white"},{"text":" — Form 10 friendships (","color":"gray"},{"score":{"name":"#rm_friends","objective":"ec.var"},"color":"aqua"},{"text":"/10)","color":"gray"}]

# Milestone 14: Bonds of the Heart
execute if score #rm_done_14 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Bonds of the Heart","color":"yellow"},{"text":" — 20 friendship level-ups","color":"gray"}]
execute unless score #rm_done_14 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Bonds of the Heart","color":"white"},{"text":" — 20 friendship level-ups (","color":"gray"},{"score":{"name":"#rm_fr_levels","objective":"ec.var"},"color":"aqua"},{"text":"/20)","color":"gray"}]

# Milestone 15: Eternal Vow
execute if score #rm_done_15 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Eternal Vow","color":"yellow"},{"text":" — First marriage","color":"gray"}]
execute unless score #rm_done_15 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Eternal Vow","color":"white"},{"text":" — A couple must marry","color":"gray"}]

# Milestone 16: Love Conquers All
execute if score #rm_done_16 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Love Conquers All","color":"yellow"},{"text":" — 2 married couples","color":"gray"}]
execute unless score #rm_done_16 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Love Conquers All","color":"white"},{"text":" — 2 married couples (","color":"gray"},{"score":{"name":"#rm_marriages","objective":"ec.var"},"color":"aqua"},{"text":"/2)","color":"gray"}]

# Milestone 17: Found Family
execute if score #rm_done_17 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Found Family","color":"yellow"},{"text":" — 75% have 2+ friends","color":"gray"}]
execute unless score #rm_done_17 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Found Family","color":"white"},{"text":" — 75% of players have 2+ friends","color":"gray"}]

tellraw @s [{text:""}]
tellraw @s [{text:"  "},{"text":"[Back to Journal]","color":"green","click_event":{"action":"run_command","command":"/trigger jn.view set 1"},"hover_event":{"action":"show_text","value":"Return to Exploration Journal"}},{"text":"  "},{"text":"[<< Origins]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.milestones set 1"},"hover_event":{"action":"show_text","value":"View Origins"}},{"text":"  "},{"text":"[Next: Guild >>]","color":"aqua","bold":true,"click_event":{"action":"run_command","command":"/trigger ec.milestones set 3"},"hover_event":{"action":"show_text","value":"View Guild milestones"}}]
tellraw @s [{text:""}]
