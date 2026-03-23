# Artifact Collection — Set Category Title (Macro)
# Macro arg: cat (category display name)
# Builds title from tier color + category name

# Get tier color and set title
$execute if score @s adv.gui_art_tier matches 1 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value [{text:"\u2726 Common ",color:"white",bold:true},{text:"$(cat)",color:"white",bold:true},{text:" \u2726",color:"white",bold:true}]
$execute if score @s adv.gui_art_tier matches 2 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value [{text:"\u2726 Uncommon ",color:"dark_blue",bold:true},{text:"$(cat)",color:"dark_blue",bold:true},{text:" \u2726",color:"dark_blue",bold:true}]
$execute if score @s adv.gui_art_tier matches 3 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value [{text:"\u2726 Rare ",color:"aqua",bold:true},{text:"$(cat)",color:"aqua",bold:true},{text:" \u2726",color:"aqua",bold:true}]
$execute if score @s adv.gui_art_tier matches 4 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value [{text:"\u2726 Ornate ",color:"dark_purple",bold:true},{text:"$(cat)",color:"dark_purple",bold:true},{text:" \u2726",color:"dark_purple",bold:true}]
$execute if score @s adv.gui_art_tier matches 5 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value [{text:"\u2726 Exquisite ",color:"light_purple",bold:true},{text:"$(cat)",color:"light_purple",bold:true},{text:" \u2726",color:"light_purple",bold:true}]
$execute if score @s adv.gui_art_tier matches 6 run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value [{text:"\u2726 Mythical ",color:"gold",bold:true},{text:"$(cat)",color:"gold",bold:true},{text:" \u2726",color:"gold",bold:true}]
