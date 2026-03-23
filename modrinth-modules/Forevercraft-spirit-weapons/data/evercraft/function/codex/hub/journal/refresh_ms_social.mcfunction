# Milestone Detail Refresh — Social (3-state)

# Per-page unclaimed count
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_13 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_13=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_14 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_14=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_15 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_15=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_16 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_16=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_17 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_17=true}] run scoreboard players add #ms_uncl ec.temp 1

# 13: First Friends — ornate
execute unless score #rm_done_13 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd13,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"First Friends",color:"gray"},{text:" \u2014 Form 10 friendships",color:"dark_gray"}]
execute if score #rm_done_13 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_13=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd13,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"First Friends",color:"green"},{text:" \u2014 10 friendships",color:"dark_green"}]
execute if score #rm_done_13 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_13=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd13,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"First Friends",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# 14: Bonds of the Heart — exquisite
execute unless score #rm_done_14 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd14,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Bonds of the Heart",color:"gray"},{text:" \u2014 20 friendship level-ups",color:"dark_gray"}]
execute if score #rm_done_14 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_14=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd14,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Bonds of the Heart",color:"green"},{text:" \u2014 20 level-ups",color:"dark_green"}]
execute if score #rm_done_14 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_14=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd14,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Bonds of the Heart",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 15: Eternal Vow — mythical
execute unless score #rm_done_15 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd15,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Eternal Vow",color:"gray"},{text:" \u2014 A couple must marry",color:"dark_gray"}]
execute if score #rm_done_15 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_15=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd15,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Eternal Vow",color:"green"},{text:" \u2014 First marriage",color:"dark_green"}]
execute if score #rm_done_15 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_15=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd15,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Eternal Vow",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# 16: Love Conquers All — exquisite
execute unless score #rm_done_16 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd16,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Love Conquers All",color:"gray"},{text:" \u2014 2 married couples",color:"dark_gray"}]
execute if score #rm_done_16 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_16=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd16,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Love Conquers All",color:"green"},{text:" \u2014 2 married couples",color:"dark_green"}]
execute if score #rm_done_16 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_16=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd16,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Love Conquers All",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 17: Found Family — ornate
execute unless score #rm_done_17 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd17,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Found Family",color:"gray"},{text:" \u2014 75% of players have 2+ friends",color:"dark_gray"}]
execute if score #rm_done_17 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_17=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd17,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Found Family",color:"green"},{text:" \u2014 75% have 2+ friends",color:"dark_green"}]
execute if score #rm_done_17 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_17=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd17,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Found Family",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# Gold header when unclaimed rewards exist
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Social \u2726",color:"gold",bold:true}
execute unless score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Social \u2726",color:"#FF69B4",bold:true}

# Bulk claim prompt (if multiple unclaimed on THIS page)
execute if score #ms_uncl ec.temp matches 2.. unless score #ms_uncl ec.temp = @s ec.claim_shw run tellraw @s [{text:"[",color:"dark_gray"},{text:"\u2726 Claim All Social",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.bulk_clm set 11"},hover_event:{action:"show_text",value:"Claim all pending Social rewards"}},{text:"]",color:"dark_gray"},{text:" \u2014 ",color:"gray"},{score:{name:"#ms_uncl",objective:"ec.temp"},color:"yellow"},{text:" pending",color:"gray"}]
execute if score #ms_uncl ec.temp matches 1.. run scoreboard players operation @s ec.claim_shw = #ms_uncl ec.temp
