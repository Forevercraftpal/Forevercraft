# Difficulty — Show Status (locked)
# @s = player, #_diff_now ec.temp = days since last choice (already computed)
# Displays current difficulty mode + days remaining until refresh

# Calculate remaining days
scoreboard players set #_diff_remain ec.temp 14
scoreboard players operation #_diff_remain ec.temp -= #_diff_now ec.temp

tellraw @s ""
execute if score @s ec.difficulty matches 1 run tellraw @s [{text:"  "},{text:"\u2726 ",color:"green"},{text:"Current Difficulty: ",color:"gray"},{text:"Newcomer",color:"green",bold:true}]
execute if score @s ec.difficulty matches 2 run tellraw @s [{text:"  "},{text:"\u2726 ",color:"red"},{text:"Current Difficulty: ",color:"gray"},{text:"Adventurer",color:"red",bold:true}]
tellraw @s [{text:"  "},{text:"Refreshes in ",color:"dark_gray"},{score:{name:"#_diff_remain",objective:"ec.temp"},color:"yellow"},{text:" day(s).",color:"dark_gray"}]
tellraw @s ""
