# World Boss — Phase 4 (Final Phase) Announcement (macro)
# Called with storage evercraft:bosses active (boss_name, boss_color)

# Base announcement with boss name
$tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"FINAL PHASE",color:"red",bold:true},{text:" — ",color:"dark_gray"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" unleashes its full power!",color:"red",bold:true}]

# Seasonal flavor line
$execute if score #wb_season ec.var matches 0 run tellraw @a [{text:"  ☁ ",color:"gold"},{text:"A devastating storm engulfs ",color:"yellow",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"!",color:"yellow",italic:true}]
$execute if score #wb_season ec.var matches 1 run tellraw @a [{text:"  ❄ ",color:"aqua"},{text:"The ground freezes solid as ",color:"blue",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" embraces the deep frost!",color:"blue",italic:true}]
$execute if score #wb_season ec.var matches 2 run tellraw @a [{text:"  ✿ ",color:"green"},{text:"Nature itself trembles as ",color:"dark_green",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" unleashes toxic wrath!",color:"dark_green",italic:true}]
$execute if score #wb_season ec.var matches 3 run tellraw @a [{text:"  ☀ ",color:"yellow"},{text:"An inferno erupts as ",color:"gold",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" becomes a living blaze!",color:"gold",italic:true}]
