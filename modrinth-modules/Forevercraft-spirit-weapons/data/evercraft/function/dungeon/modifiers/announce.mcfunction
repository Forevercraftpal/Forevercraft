# Dungeon Modifier Announcement (macro)
$tellraw @a[tag=dg.player] [{text:"[Dungeon] ",color:"dark_purple"},{text:"Modifier: ",color:"gray"},{text:"$(name)",color:"$(color)",bold:true},{text:" — $(desc)",color:"gray",italic:true}]
playsound minecraft:block.note_block.chime master @a[tag=dg.player] ~ ~ ~ 0.8 0.6
