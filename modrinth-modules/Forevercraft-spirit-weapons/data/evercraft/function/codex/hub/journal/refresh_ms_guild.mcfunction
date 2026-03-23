# Milestone Detail Refresh — Guild & Warfare (3-state)

# Per-page unclaimed count
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_18 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_18=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_19 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_19=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_20 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_20=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_21 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_21=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_22 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_22=true}] run scoreboard players add #ms_uncl ec.temp 1

# 18: Banner Raised — rare
execute unless score #rm_done_18 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd18,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Banner Raised",color:"gray"},{text:" \u2014 Create a guild",color:"dark_gray"}]
execute if score #rm_done_18 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_18=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd18,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Banner Raised",color:"green"},{text:" \u2014 First guild created",color:"dark_green"}]
execute if score #rm_done_18 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_18=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd18,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Banner Raised",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Rare Crate]",color:"green",bold:true}]

# 19: Declaration of War — exquisite
execute unless score #rm_done_19 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd19,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Declaration of War",color:"gray"},{text:" \u2014 Declare a guild war",color:"dark_gray"}]
execute if score #rm_done_19 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_19=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd19,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Declaration of War",color:"green"},{text:" \u2014 First guild war",color:"dark_green"}]
execute if score #rm_done_19 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_19=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd19,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Declaration of War",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 20: United Front — ornate
execute unless score #rm_done_20 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd20,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"United Front",color:"gray"},{text:" \u2014 Form a guild alliance",color:"dark_gray"}]
execute if score #rm_done_20 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_20=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd20,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"United Front",color:"green"},{text:" \u2014 First alliance",color:"dark_green"}]
execute if score #rm_done_20 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_20=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd20,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"United Front",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# 21: Conquest — mythical
execute unless score #rm_done_21 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd21,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Conquest",color:"gray"},{text:" \u2014 A guild wins 3 wars",color:"dark_gray"}]
execute if score #rm_done_21 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_21=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd21,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Conquest",color:"green"},{text:" \u2014 A guild won 3 wars",color:"dark_green"}]
execute if score #rm_done_21 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_21=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd21,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Conquest",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# 22: Guild Dominion — exquisite
execute unless score #rm_done_22 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd22,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Guild Dominion",color:"gray"},{text:" \u2014 10,000 contributions",color:"dark_gray"}]
execute if score #rm_done_22 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_22=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd22,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Guild Dominion",color:"green"},{text:" \u2014 10K contributions",color:"dark_green"}]
execute if score #rm_done_22 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_22=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd22,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Guild Dominion",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# Gold header when unclaimed rewards exist
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Guild & Warfare \u2726",color:"gold",bold:true}
execute unless score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Guild & Warfare \u2726",color:"dark_red",bold:true}

# Bulk claim prompt (if multiple unclaimed on THIS page)
execute if score #ms_uncl ec.temp matches 2.. unless score #ms_uncl ec.temp = @s ec.claim_shw run tellraw @s [{text:"[",color:"dark_gray"},{text:"\u2726 Claim All Guild",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.bulk_clm set 12"},hover_event:{action:"show_text",value:"Claim all pending Guild rewards"}},{text:"]",color:"dark_gray"},{text:" \u2014 ",color:"gray"},{score:{name:"#ms_uncl",objective:"ec.temp"},color:"yellow"},{text:" pending",color:"gray"}]
execute if score #ms_uncl ec.temp matches 1.. run scoreboard players operation @s ec.claim_shw = #ms_uncl ec.temp
