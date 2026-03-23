# Macro: Announce floor descent
title @a[tag=dg.player] times 10 60 20
$title @a[tag=dg.player] title {text:"FLOOR $(current)",color:"dark_red",bold:true}
title @a[tag=dg.player] subtitle {text:"Descending deeper...",color:"red"}
$tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Descending to Floor $(current)...",color:"red",bold:true}]
