# World Boss — Kill Announcement (macro)
# Called with storage evercraft:bosses active (boss_name, boss_color)
# @s = the killing player

tellraw @a [{text:"═══════════════════════════════",color:"gold"}]
$tellraw @a [{text:"  ⚔ ",color:"gold"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" Slain!",color:"yellow",bold:true}]
tellraw @a [{text:"  ",color:"dark_gray"},{text:"Final blow by ",color:"gray"},{selector:"@s",color:"yellow"}]
# Seasonal defeat flavor
execute if score #season_id ec.var matches 0 run tellraw @a [{text:"  ☁ ",color:"gold"},{text:"The autumn winds fall silent...",color:"yellow",italic:true}]
$execute if score #season_id ec.var matches 1 run tellraw @a [{text:"  ❄ ",color:"aqua"},{text:"The frost melts away as ",color:"blue",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" falls...",color:"blue",italic:true}]
$execute if score #season_id ec.var matches 2 run tellraw @a [{text:"  ✿ ",color:"green"},{text:"The thorned vines wither as ",color:"dark_green",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" collapses...",color:"dark_green",italic:true}]
$execute if score #season_id ec.var matches 3 run tellraw @a [{text:"  ☀ ",color:"yellow"},{text:"The scorching heat fades as ",color:"gold",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" is extinguished...",color:"gold",italic:true}]
tellraw @a [{text:"═══════════════════════════════",color:"gold"}]
