# Milestone Detail Refresh — Mastery (3-state)

# Per-page unclaimed count
scoreboard players set #ms_uncl ec.temp 0
execute if score #rm_done_31 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_31=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_32 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_32=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_33 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_33=true}] run scoreboard players add #ms_uncl ec.temp 1
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run scoreboard players add #ms_uncl ec.temp 1

# 31: Full Bestiary — mythical
execute unless score #rm_done_31 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd31,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Full Bestiary",color:"gray"},{text:" \u2014 Discover all 96 companions",color:"dark_gray"}]
execute if score #rm_done_31 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_31=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd31,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Full Bestiary",color:"green"},{text:" \u2014 All 96 companions",color:"dark_green"}]
execute if score #rm_done_31 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_31=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd31,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Full Bestiary",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Mythical Crate]",color:"green",bold:true}]

# 32: Campfire Chronicles — ornate
execute unless score #rm_done_32 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd32,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Campfire Chronicles",color:"gray"},{text:" \u2014 Witness 25 stories",color:"dark_gray"}]
execute if score #rm_done_32 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_32=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd32,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"Campfire Chronicles",color:"green"},{text:" \u2014 25 stories witnessed",color:"dark_green"}]
execute if score #rm_done_32 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_32=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd32,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"Campfire Chronicles",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Ornate Crate]",color:"green",bold:true}]

# 33: The Gilded Realm — exquisite
execute unless score #rm_done_33 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd33,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"The Gilded Realm",color:"gray"},{text:" \u2014 Earn 5,000 Forever Coins",color:"dark_gray"}]
execute if score #rm_done_33 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_33=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd33,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"The Gilded Realm",color:"green"},{text:" \u2014 5,000 coins earned",color:"dark_green"}]
execute if score #rm_done_33 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_33=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd33,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"gold"},{text:"The Gilded Realm",color:"gold"},{text:" \u2014 ",color:"yellow"},{text:"[Claim Exquisite Crate]",color:"green",bold:true}]

# 34: Eternal Legacy — mythical x3 (SPECIAL)
execute unless score #rm_done_34 ec.var matches 1 run data modify entity @e[type=text_display,tag=Adv.JnMd34,limit=1,sort=nearest] text set value [{text:"\u2717 ",color:"dark_gray"},{text:"Eternal Legacy",color:"#E0B0FF",bold:true},{text:" \u2014 Complete all 31 others",color:"dark_gray"}]
execute if score #rm_done_34 ec.var matches 1 if entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd34,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"#FFD700",bold:true},{text:"Eternal Legacy",color:"#FFD700",bold:true},{text:" \u2014 ALL milestones!",color:"#FFD700"}]
execute if score #rm_done_34 ec.var matches 1 unless entity @s[advancements={evercraft:milestones/claimed/ms_34=true}] run data modify entity @e[type=text_display,tag=Adv.JnMd34,limit=1,sort=nearest] text set value [{text:"\u2605 ",color:"#FFD700",bold:true},{text:"Eternal Legacy",color:"#FFD700",bold:true},{text:" \u2014 ",color:"yellow"},{text:"[Claim 3x Mythical Crate]",color:"green",bold:true}]

# Gold header when unclaimed rewards exist
execute if score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Mastery \u2726",color:"gold",bold:true}
execute unless score #ms_uncl ec.temp matches 1.. run data modify entity @e[type=text_display,tag=Adv.MenuTitle,limit=1,sort=nearest] text set value {text:"\u2726 Mastery \u2726",color:"light_purple",bold:true}

# Bulk claim prompt (if multiple unclaimed on THIS page)
execute if score #ms_uncl ec.temp matches 2.. unless score #ms_uncl ec.temp = @s ec.claim_shw run tellraw @s [{text:"[",color:"dark_gray"},{text:"\u2726 Claim All Mastery",color:"gold",bold:true,click_event:{action:"run_command",command:"/trigger ec.bulk_clm set 15"},hover_event:{action:"show_text",value:"Claim all pending Mastery rewards"}},{text:"]",color:"dark_gray"},{text:" \u2014 ",color:"gray"},{score:{name:"#ms_uncl",objective:"ec.temp"},color:"yellow"},{text:" pending",color:"gray"}]
execute if score #ms_uncl ec.temp matches 1.. run scoreboard players operation @s ec.claim_shw = #ms_uncl ec.temp
