# Spring seasonal effect announcement (macro)
# Called with storage evercraft:bosses active
$tellraw @a[tag=wb.participant,distance=..15] [{text:"",color:"dark_green",italic:true},{text:"Toxic spores erupt from ",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"!",color:"dark_green",italic:true}]
