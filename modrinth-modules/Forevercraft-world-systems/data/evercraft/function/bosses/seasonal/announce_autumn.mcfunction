# Autumn seasonal effect announcement (macro)
# Called with storage evercraft:bosses active
$tellraw @a[tag=wb.participant,distance=..15] [{text:"",color:"yellow",italic:true},{text:"A gust of wind from ",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" buffets you!",color:"yellow",italic:true}]
