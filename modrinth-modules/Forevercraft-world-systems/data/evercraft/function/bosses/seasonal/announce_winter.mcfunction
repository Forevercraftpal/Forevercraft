# Winter seasonal effect announcement (macro)
# Called with storage evercraft:bosses active
$tellraw @a[tag=wb.participant,distance=..12] [{text:"",color:"aqua",italic:true},{text:"Frost radiates from ",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:", chilling you to the bone!",color:"aqua",italic:true}]
