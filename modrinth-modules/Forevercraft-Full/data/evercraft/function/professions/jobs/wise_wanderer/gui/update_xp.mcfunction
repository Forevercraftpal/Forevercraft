# Wise Wanderer — Update XP Display (macro function)
# Called with storage evercraft:ww {xp_level: <int>}
$data modify entity @e[type=minecraft:text_display,tag=WW.XPDisplay,limit=1,sort=nearest] text set value [{text:"Your XP: ",color:"green"},{text:"$(xp_level)",color:"gold",bold:true},{text:" Levels",color:"green"}]
