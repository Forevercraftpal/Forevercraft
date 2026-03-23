# Bestiary GUI — Render Row (Macro)
# Args: {name:"Blaze", kills:123, threshold:5000, color:"white", row:0}
# Updates the text_display entity for this row with current kill count
# Run as the player (entities found via nearest)

$data modify entity @e[type=text_display,tag=Bs.Row$(row),limit=1,sort=nearest] text set value [{text:"$(name)  ",color:"$(color)"},{text:"$(kills)",color:"yellow"},{text:"/$(threshold)",color:"gray"}]
