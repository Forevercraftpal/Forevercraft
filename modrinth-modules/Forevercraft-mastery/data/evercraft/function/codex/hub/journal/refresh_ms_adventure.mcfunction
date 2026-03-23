# Milestone Detail Refresh — Adventure (3-state)

# Per-page unclaimed count
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_23 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_23=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_24 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_24=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_25 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_25=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_26 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_26=true}] run scoreboard players add #ms_uncl ec.temp 1

# 23: Dream Walkers — exquisite
execute unless score #rm_done_23 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd23,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Dream Walkers",color:"gray"},{text:" \u2014 Complete 50 dreams",color:"dark_gray"}]
execute if score #rm_done_23 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_23=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd23,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Dream Walkers",color:"green"},{text:" \u2014 50 dreams completed",color:"dark_green"}]
execute if score #rm_done_23 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_23=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd23,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Dream Walkers",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 24: Bounty Board Legends — ornate
execute unless score #rm_done_24 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd24,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Bounty Board Legends",color:"gray"},{text:" \u2014 Complete 100 bounties",color:"dark_gray"}]
execute if score #rm_done_24 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_24=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd24,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Bounty Board Legends",color:"green"},{text:" \u2014 100 bounties",color:"dark_green"}]
execute if score #rm_done_24 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_24=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd24,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Bounty Board Legends",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# 25: The Expedition — exquisite
execute unless score #rm_done_25 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd25,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"The Expedition",color:"gray"},{text:" \u2014 50% explore 15+ biomes",color:"dark_gray"}]
execute if score #rm_done_25 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_25=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd25,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"The Expedition",color:"green"},{text:" \u2014 50% explored 15+ biomes",color:"dark_green"}]
execute if score #rm_done_25 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_25=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd25,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"The Expedition",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 26: Hearthstone Haven — ornate
execute unless score #rm_done_26 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd26,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Hearthstone Haven",color:"gray"},{text:" \u2014 75% of players have a home",color:"dark_gray"}]
execute if score #rm_done_26 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_26=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd26,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Hearthstone Haven",color:"green"},{text:" \u2014 75% have homes",color:"dark_green"}]
execute if score #rm_done_26 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_26=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd26,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Hearthstone Haven",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# Gold header when unclaimed rewards exist
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Adventure \u2726",color:"gold",bold:true}
execute unless score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Adventure \u2726",color:"dark_aqua",bold:true}

# Bulk claim prompt (if multiple unclaimed on THIS page)
execute if score #ms_uncl ec.temp matches 2.. unless score #ms_uncl ec.temp = @s ec.claim_shw run tellraw @s [{text:"[",color:"dark_gray"},{text:"\u2726 Claim All Adventure",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.bulk_clm set 13"},hover_event:{action:"show_text",value:"Claim all pending Adventure rewards"}},{text:"]",color:"dark_gray"},{text:" \u2014 ",color:"gray"},{score:{name:"#ms_uncl",objective:"ec.temp"},color:"yellow"},{text:" pending",color:"gray"}]
execute if score #ms_uncl ec.temp matches 1.. run scoreboard players operation @s ec.claim_shw = #ms_uncl ec.temp
