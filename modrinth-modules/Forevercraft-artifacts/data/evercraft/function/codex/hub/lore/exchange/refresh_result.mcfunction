# Lore Exchange — Refresh result line (macro)
# Called with: {reward, tier_name, tier_color}

$data modify entity @e[type=text_display,tag=Adv.LoreExResult,distance=..5,limit=1] text set value [{text:"$(tier_name)",color:"$(tier_color)"},{text:" \u279c ",color:"dark_gray"},{text:"$(reward) Lore Shard(s)",color:"yellow",bold:true}]
