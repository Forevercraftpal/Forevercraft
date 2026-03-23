# Milestone Detail Refresh — Origins (3-state: incomplete / unclaimed / claimed)

# Per-page unclaimed count
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_1 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_1=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_3 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_3=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_5 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_5=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_6 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_6=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_7 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_7=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_8 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_8=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_9 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_9=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_10 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_10=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_11 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_11=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_12 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_12=true}] run scoreboard players add #ms_uncl ec.temp 1

# 1: First Light
execute unless score #rm_done_1 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd1,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"First Light",color:"gray"},{text:" \u2014 Slay a patron mob",color:"dark_gray"}]
execute if score #rm_done_1 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_1=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd1,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"First Light",color:"green"},{text:" \u2014 First patron slain",color:"dark_green"}]
execute if score #rm_done_1 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_1=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd1,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"First Light",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Rare Crate]",color:"green",bold:true}]

# 3: Brave New World
execute unless score #rm_done_3 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd3,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Brave New World",color:"gray"},{text:" \u2014 Explore 5 biomes",color:"dark_gray"}]
execute if score #rm_done_3 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_3=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd3,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Brave New World",color:"green"},{text:" \u2014 5 biomes explored",color:"dark_green"}]
execute if score #rm_done_3 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_3=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd3,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Brave New World",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Common Crate]",color:"green",bold:true}]

# 5: The Hunt Begins
execute unless score #rm_done_5 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd5,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"The Hunt Begins",color:"gray"},{text:" \u2014 Slay 25 patrons",color:"dark_gray"}]
execute if score #rm_done_5 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_5=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd5,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"The Hunt Begins",color:"green"},{text:" \u2014 25 patrons slain",color:"dark_green"}]
execute if score #rm_done_5 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_5=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd5,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"The Hunt Begins",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# 6: Companion Collectors
execute unless score #rm_done_6 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd6,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Companion Collectors",color:"gray"},{text:" \u2014 Discover 25 companions",color:"dark_gray"}]
execute if score #rm_done_6 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_6=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd6,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Companion Collectors",color:"green"},{text:" \u2014 25 companions",color:"dark_green"}]
execute if score #rm_done_6 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_6=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd6,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Companion Collectors",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# 7: Seasoned Chefs
execute unless score #rm_done_7 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd7,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Seasoned Chefs",color:"gray"},{text:" \u2014 Cook 10 recipes",color:"dark_gray"}]
execute if score #rm_done_7 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_7=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd7,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Seasoned Chefs",color:"green"},{text:" \u2014 10 recipes cooked",color:"dark_green"}]
execute if score #rm_done_7 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_7=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd7,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Seasoned Chefs",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 8: Lore Seekers
execute unless score #rm_done_8 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd8,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Lore Seekers",color:"gray"},{text:" \u2014 Collect 50 lore",color:"dark_gray"}]
execute if score #rm_done_8 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_8=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd8,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Lore Seekers",color:"green"},{text:" \u2014 50 lore collected",color:"dark_green"}]
execute if score #rm_done_8 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_8=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd8,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Lore Seekers",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 9: Slayers of the Deep
execute unless score #rm_done_9 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd9,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Slayers of the Deep",color:"gray"},{text:" \u2014 Defeat a world boss",color:"dark_gray"}]
execute if score #rm_done_9 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_9=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd9,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Slayers of the Deep",color:"green"},{text:" \u2014 Boss defeated",color:"dark_green"}]
execute if score #rm_done_9 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_9=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd9,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Slayers of the Deep",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# 10: Across All Lands
execute unless score #rm_done_10 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd10,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Across All Lands",color:"gray"},{text:" \u2014 Visit all biomes",color:"dark_gray"}]
execute if score #rm_done_10 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_10=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd10,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Across All Lands",color:"green"},{text:" \u2014 All 25 biomes",color:"dark_green"}]
execute if score #rm_done_10 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_10=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd10,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Across All Lands",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# 11: Legendary Arsenal
execute unless score #rm_done_11 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd11,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Legendary Arsenal",color:"gray"},{text:" \u2014 Find 5 mythicals",color:"dark_gray"}]
execute if score #rm_done_11 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_11=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd11,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Legendary Arsenal",color:"green"},{text:" \u2014 5 mythical artifacts",color:"dark_green"}]
execute if score #rm_done_11 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_11=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd11,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Legendary Arsenal",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# 12: Quest Masters
execute unless score #rm_done_12 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd12,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Quest Masters",color:"gray"},{text:" \u2014 Complete 100 quests",color:"dark_gray"}]
execute if score #rm_done_12 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_12=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd12,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Quest Masters",color:"green"},{text:" \u2014 100 quests done",color:"dark_green"}]
execute if score #rm_done_12 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_12=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd12,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Quest Masters",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# Gold header when unclaimed rewards exist
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Origins \u2726",color:"gold",bold:true}
execute unless score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Origins \u2726",color:"yellow",bold:true}

# Bulk claim prompt (if multiple unclaimed on THIS page)
execute if score #ms_uncl ec.temp matches 2.. unless score #ms_uncl ec.temp = @s ec.claim_shw run tellraw @s [{text:"[",color:"dark_gray"},{text:"\u2726 Claim All Origins",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.bulk_clm set 10"},hover_event:{action:"show_text",value:"Claim all pending Origins rewards"}},{text:"]",color:"dark_gray"},{text:" \u2014 ",color:"gray"},{score:{name:"#ms_uncl",objective:"ec.temp"},color:"yellow"},{text:" pending",color:"gray"}]
execute if score #ms_uncl ec.temp matches 1.. run scoreboard players operation @s ec.claim_shw = #ms_uncl ec.temp
