# Summer seasonal effect announcement (macro)
# Called with storage evercraft:bosses active
$tellraw @a[tag=wb.participant,distance=..12] [{text:"",color:"gold",italic:true},{text:"Scorching heat erupts from ",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"!",color:"gold",italic:true}]
