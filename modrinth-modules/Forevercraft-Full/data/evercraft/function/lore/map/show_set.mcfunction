# Lore Map — Display single in-progress set (macro)
# Args: $(name), $(pieces), $(dim) from set metadata
# #lore_have ec.temp already holds collected count
# Run as: the triggering player

# Store dim for conditional display
$scoreboard players set #lore_dim ec.temp $(dim)

# Dim-colored bullet: 0=green (OW), 1=red (Nether), 2=dark_purple (End), 3=aqua (Pages)
$execute if score #lore_dim ec.temp matches 0 run tellraw @s [{text:"    "},{text:"• ",color:"green"},{text:"$(name)",color:"yellow"},{text:" (",color:"dark_gray"},{score:{name:"#lore_have",objective:"ec.temp"},color:"aqua"},{text:"/$(pieces) pieces)",color:"dark_gray"}]
$execute if score #lore_dim ec.temp matches 1 run tellraw @s [{text:"    "},{text:"• ",color:"red"},{text:"$(name)",color:"yellow"},{text:" (",color:"dark_gray"},{score:{name:"#lore_have",objective:"ec.temp"},color:"aqua"},{text:"/$(pieces) pieces)",color:"dark_gray"}]
$execute if score #lore_dim ec.temp matches 2 run tellraw @s [{text:"    "},{text:"• ",color:"dark_purple"},{text:"$(name)",color:"yellow"},{text:" (",color:"dark_gray"},{score:{name:"#lore_have",objective:"ec.temp"},color:"aqua"},{text:"/$(pieces) pieces)",color:"dark_gray"}]
$execute if score #lore_dim ec.temp matches 3 run tellraw @s [{text:"    "},{text:"• ",color:"aqua"},{text:"$(name)",color:"yellow"},{text:" (",color:"dark_gray"},{score:{name:"#lore_have",objective:"ec.temp"},color:"aqua"},{text:"/$(pieces) pieces)",color:"dark_gray"}]

scoreboard players add #lore_shown ec.temp 1
