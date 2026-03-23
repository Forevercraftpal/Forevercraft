# World Milestones — Page 6: Mastery & Endgame (6/6)

tellraw @s [{text:"\n"},{text:"  World Milestones","color":"gold","bold":true},{text:" — Mastery","color":"light_purple"}]
tellraw @s [{text:"  ","color":"dark_gray"},{text:"The ultimate challenges","color":"gray","italic":true}]
tellraw @s [{text:""}]

# Milestone 31: Full Bestiary
execute if score #rm_done_31 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Full Bestiary","color":"yellow"},{"text":" — All 96 companions","color":"gray"}]
execute unless score #rm_done_31 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Full Bestiary","color":"white"},{"text":" — Discover all 96 companions (","color":"gray"},{"score":{"name":"#rm_pets","objective":"ec.var"},"color":"aqua"},{"text":"/96)","color":"gray"}]

# Milestone 32: Campfire Chronicles
execute if score #rm_done_32 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"Campfire Chronicles","color":"yellow"},{"text":" — 25 stories witnessed","color":"gray"}]
execute unless score #rm_done_32 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Campfire Chronicles","color":"white"},{"text":" — Witness 25 stories (","color":"gray"},{"score":{"name":"#rm_stories","objective":"ec.var"},"color":"aqua"},{"text":"/25)","color":"gray"}]

# Milestone 33: The Gilded Realm
execute if score #rm_done_33 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"green"},{"text":"The Gilded Realm","color":"yellow"},{"text":" — 5,000 coins earned","color":"gray"}]
execute unless score #rm_done_33 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"The Gilded Realm","color":"white"},{"text":" — Earn 5,000 Forever Coins (","color":"gray"},{"score":{"name":"#rm_coins","objective":"ec.var"},"color":"aqua"},{"text":"/5000)","color":"gray"}]

# Milestone 34: Eternal Legacy
execute if score #rm_done_34 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[Done] ","color":"#FFD700","bold":true},{"text":"Eternal Legacy","color":"#FFD700","bold":true},{"text":" — ALL milestones complete!","color":"#FFD700"}]
execute unless score #rm_done_34 ec.var matches 1 run tellraw @s [{text:"  "},{"text":"[ ] ","color":"dark_gray"},{"text":"Eternal Legacy","color":"#E0B0FF","bold":true},{"text":" — Complete all 31 other milestones","color":"gray"}]

# DR bonus summary
tellraw @s [{text:""}]
execute if score #rm_dr_bonus ec.var matches 1.. run tellraw @s [{text:"  "},{"text":"Realm DR Bonus: +","color":"dark_gray"},{"score":{"name":"#rm_dr_bonus","objective":"ec.var"},"color":"green"},{"text":" (x0.1)","color":"dark_gray"}]

tellraw @s [{text:""}]
tellraw @s [{text:"  "},{"text":"[Back to Journal]","color":"green","click_event":{"action":"run_command","command":"/trigger jn.view set 1"},"hover_event":{"action":"show_text","value":"Return to Exploration Journal"}},{"text":"  "},{"text":"[<< Combat]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.milestones set 5"},"hover_event":{"action":"show_text","value":"View Combat"}},{"text":"  "},{"text":"[Origins >>]","color":"aqua","click_event":{"action":"run_command","command":"/trigger ec.milestones set 1"},"hover_event":{"action":"show_text","value":"Back to Origins"}}]
tellraw @s [{text:""}]
