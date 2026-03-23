# World Boss — Fade Away Announcement (macro)
# Called with storage evercraft:bosses active (boss_name, boss_color)
# Used when boss dies/glitches without player kill credit

$tellraw @a [{text:"[",color:"dark_gray"},{text:"World Boss",color:"gold",bold:true},{text:"] ",color:"dark_gray"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" has faded away...",color:"gray"}]
