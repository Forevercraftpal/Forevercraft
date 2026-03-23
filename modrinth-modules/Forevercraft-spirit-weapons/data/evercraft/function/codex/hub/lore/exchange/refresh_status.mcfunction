# Lore Exchange — Refresh status line (macro)
# Called with: {count, required, tier_name, tier_color}

$data modify entity @e[type=text_display,tag=Adv.LoreExStatus,distance=..5,limit=1] text set value [{text:"Deposited: ",color:"gray"},{text:"$(count)/$(required) ",color:"yellow",bold:true},{text:"$(tier_name)",color:"$(tier_color)"},{text:" pieces",color:"gray"}]
