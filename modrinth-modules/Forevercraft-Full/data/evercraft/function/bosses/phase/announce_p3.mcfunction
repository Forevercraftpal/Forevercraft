# World Boss — Phase 3 Announcement (macro)
# Called with storage evercraft:bosses active (boss_name, boss_color)

# Base announcement with boss name
$tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Phase 3",color:"red",bold:true},{text:" — ",color:"dark_gray"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" unleashes its fury!",color:"red"}]

# Seasonal flavor line
$execute if score #wb_season ec.var matches 0 run tellraw @a [{text:"  ☁ ",color:"gold"},{text:"Howling gales erupt around ",color:"yellow",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"!",color:"yellow",italic:true}]
$execute if score #wb_season ec.var matches 1 run tellraw @a [{text:"  ❄ ",color:"aqua"},{text:"A blizzard swirls as ",color:"blue",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" roars with icy rage!",color:"blue",italic:true}]
$execute if score #wb_season ec.var matches 2 run tellraw @a [{text:"  ✿ ",color:"green"},{text:"Poison clouds billow from ",color:"dark_green",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"!",color:"dark_green",italic:true}]
$execute if score #wb_season ec.var matches 3 run tellraw @a [{text:"  ☀ ",color:"yellow"},{text:"Flames erupt as ",color:"gold",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" burns with fury!",color:"gold",italic:true}]
