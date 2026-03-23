# World Boss — Phase 2 Announcement (macro)
# Called with storage evercraft:bosses active (boss_name, boss_color)

# Base announcement with boss name
$tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Phase 2",color:"yellow",bold:true},{text:" — ",color:"dark_gray"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" grows stronger!",color:"yellow"}]

# Seasonal flavor line
$execute if score #wb_season ec.var matches 0 run tellraw @a [{text:"  ☁ ",color:"gold"},{text:"Autumn winds howl as ",color:"yellow",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" channels the gale!",color:"yellow",italic:true}]
$execute if score #wb_season ec.var matches 1 run tellraw @a [{text:"  ❄ ",color:"aqua"},{text:"Frost crackles across ",color:"blue",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"'s body!",color:"blue",italic:true}]
$execute if score #wb_season ec.var matches 2 run tellraw @a [{text:"  ✿ ",color:"green"},{text:"Thorned vines coil tighter around ",color:"dark_green",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"!",color:"dark_green",italic:true}]
$execute if score #wb_season ec.var matches 3 run tellraw @a [{text:"  ☀ ",color:"yellow"},{text:"Heat surges from ",color:"gold",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" as the air shimmers!",color:"gold",italic:true}]
