# World Boss — Despawn/Timeout Announcement (macro)
# Called with storage evercraft:bosses active (boss_name, boss_color)

$tellraw @a [{text:"[",color:"dark_gray"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_gray"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" has retreated into the shadows...",color:"gray"}]
