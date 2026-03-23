# Milestone Detail Refresh — Combat (3-state)

# Per-page unclaimed count
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_27 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_27=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_28 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_28=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_29 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_29=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_30 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_30=true}] run scoreboard players add #ms_uncl ec.temp 1

# 27: The Hundred — exquisite
execute unless score #rm_done_27 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd27,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"The Hundred",color:"gray"},{text:" \u2014 Slay 100 patrons",color:"dark_gray"}]
execute if score #rm_done_27 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_27=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd27,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"The Hundred",color:"green"},{text:" \u2014 100 patrons slain",color:"dark_green"}]
execute if score #rm_done_27 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_27=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd27,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"The Hundred",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 28: Ascended — mythical
execute unless score #rm_done_28 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd28,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Ascended",color:"gray"},{text:" \u2014 50% reach DR 20+",color:"dark_gray"}]
execute if score #rm_done_28 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_28=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd28,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Ascended",color:"green"},{text:" \u2014 50% reached DR 20+",color:"dark_green"}]
execute if score #rm_done_28 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_28=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd28,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Ascended",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# 29: Duel of Legends — ornate
execute unless score #rm_done_29 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd29,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Duel of Legends",color:"gray"},{text:" \u2014 Complete 50 duels",color:"dark_gray"}]
execute if score #rm_done_29 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_29=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd29,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Duel of Legends",color:"green"},{text:" \u2014 50 duels completed",color:"dark_green"}]
execute if score #rm_done_29 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_29=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd29,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Duel of Legends",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# 30: Party of Heroes — exquisite
execute unless score #rm_done_30 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd30,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Party of Heroes",color:"gray"},{text:" \u2014 4+ players defeat a boss",color:"dark_gray"}]
execute if score #rm_done_30 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_30=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd30,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Party of Heroes",color:"green"},{text:" \u2014 Party boss kill",color:"dark_green"}]
execute if score #rm_done_30 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_30=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd30,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Party of Heroes",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# Gold header when unclaimed rewards exist
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Combat \u2726",color:"gold",bold:true}
execute unless score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Combat \u2726",color:"red",bold:true}

# Bulk claim prompt (if multiple unclaimed on THIS page)
execute if score #ms_uncl ec.temp matches 2.. unless score #ms_uncl ec.temp = @s ec.claim_shw run tellraw @s [{text:"[",color:"dark_gray"},{text:"\u2726 Claim All Combat",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.bulk_clm set 14"},hover_event:{action:"show_text",value:"Claim all pending Combat rewards"}},{text:"]",color:"dark_gray"},{text:" \u2014 ",color:"gray"},{score:{name:"#ms_uncl",objective:"ec.temp"},color:"yellow"},{text:" pending",color:"gray"}]
execute if score #ms_uncl ec.temp matches 1.. run scoreboard players operation @s ec.claim_shw = #ms_uncl ec.temp
