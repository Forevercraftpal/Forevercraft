# Spirit Raids — Announce Floor (macro)
# $() receives floor.current

title @a[tag=rd.player] times 5 40 10
$title @a[tag=rd.player] title {text:"Raid Floor $(current)",color:"dark_red",bold:true}
title @a[tag=rd.player] subtitle {text:"Prepare for combat...",color:"red"}
$tellraw @a[tag=rd.player] [{text:"[Raid] ",color:"dark_red","bold":true},{text:"Floor $(current)","color":"red"},{text:" — Enemies incoming!","color":"gray"}]
