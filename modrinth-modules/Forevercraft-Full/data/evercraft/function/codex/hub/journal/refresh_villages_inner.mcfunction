# Journal — Refresh Villages Inner (Macro)
# Injects village count into the count display
$data modify entity @e[type=text_display,tag=Adv.JnVCount,limit=1,sort=nearest] text set value [{text:"$(village_count)",color:"green",bold:true},{text:" Villages Discovered",color:"white",bold:false}]
