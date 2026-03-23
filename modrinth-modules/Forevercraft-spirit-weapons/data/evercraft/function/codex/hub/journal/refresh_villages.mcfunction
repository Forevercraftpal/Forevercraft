# Journal — Refresh Villages Display
# Updates village count (macro) and milestone checkmarks
# Run as the player

# Store village count for macro
execute store result storage evercraft:journal_gui village_count int 1.0 run scoreboard players get @s jn.village_count

# Update count display via macro
function evercraft:codex/hub/journal/refresh_villages_inner with storage evercraft:journal_gui

# Milestone 1: 5 Villages
execute if score @s jn.village_count matches 5.. run data modify entity @e[type=text_display,tag=Adv.JnVm1,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"5 Villages — Novice Traveler",color:"white"}]
execute unless score @s jn.village_count matches 5.. run data modify entity @e[type=text_display,tag=Adv.JnVm1,limit=1,sort=nearest] text set value {text:"? 5 Villages — Novice Traveler",color:"dark_gray"}

# Milestone 2: 10 Villages
execute if score @s jn.village_count matches 10.. run data modify entity @e[type=text_display,tag=Adv.JnVm2,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"10 Villages — Seasoned Explorer",color:"white"}]
execute unless score @s jn.village_count matches 10.. run data modify entity @e[type=text_display,tag=Adv.JnVm2,limit=1,sort=nearest] text set value {text:"? 10 Villages — Seasoned Explorer",color:"dark_gray"}

# Milestone 3: 20 Villages
execute if score @s jn.village_count matches 20.. run data modify entity @e[type=text_display,tag=Adv.JnVm3,limit=1,sort=nearest] text set value [{text:"\u2713 ",color:"green"},{text:"20 Villages — Master Cartographer",color:"gold"}]
execute unless score @s jn.village_count matches 20.. run data modify entity @e[type=text_display,tag=Adv.JnVm3,limit=1,sort=nearest] text set value {text:"? 20 Villages — Master Cartographer",color:"dark_gray"}
