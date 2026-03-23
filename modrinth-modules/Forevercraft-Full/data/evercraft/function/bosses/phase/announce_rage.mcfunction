# World Boss — Rage Announcement (macro)
# Called with storage evercraft:bosses active (boss_name, boss_color)

$tellraw @a [{text:"[",color:"dark_red"},{text:"World Boss",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"⚠ ",color:"dark_red"},{text:"$(boss_name)",color:"$(boss_color)",bold:true},{text:" IS ENRAGED! ⚠",color:"dark_red",bold:true}]

# Seasonal rage flavor
$execute if score #wb_season ec.var matches 0 run tellraw @a [{text:"  ",color:"dark_gray"},{text:"Desperate fury and howling winds surge from ",color:"red",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:"!",color:"red",italic:true}]
$execute if score #wb_season ec.var matches 1 run tellraw @a [{text:"  ",color:"dark_gray"},{text:"Frozen rage consumes ",color:"red",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" — ice and fury become one!",color:"red",italic:true}]
$execute if score #wb_season ec.var matches 2 run tellraw @a [{text:"  ",color:"dark_gray"},{text:"Toxic fury erupts from ",color:"red",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" in a cloud of death!",color:"red",italic:true}]
$execute if score #wb_season ec.var matches 3 run tellraw @a [{text:"  ",color:"dark_gray"},{text:"White-hot rage consumes ",color:"red",italic:true},{text:"$(boss_name)",color:"$(boss_color)",italic:true,bold:true},{text:" — the air itself ignites!",color:"red",italic:true}]
# No-season fallback
execute unless score #wb_season ec.var matches 0..3 run tellraw @a [{text:"  ",color:"dark_gray"},{text:"Desperate fury surges through the beast!",color:"red",italic:true}]
