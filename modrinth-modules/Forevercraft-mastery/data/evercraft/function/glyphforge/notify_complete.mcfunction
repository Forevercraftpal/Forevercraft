# Macro — Notify the forger that their glyph is ready to collect
$tellraw $(forger) [{text:"[Glyphforge] ",color:"red"},{text:"Your ",color:"gold"},{text:"$(glyph) Glyph",color:"yellow",bold:true},{text:" has finished forging! Return to collect it.",color:"gold"}]
$playsound minecraft:block.note_block.bell master $(forger) ~ ~ ~ 1.0 1.2
$title $(forger) times 5 50 15
$title $(forger) title {text:" "}
$title $(forger) subtitle [{text:"Glyph Forge Complete!",color:"green",bold:true}]
