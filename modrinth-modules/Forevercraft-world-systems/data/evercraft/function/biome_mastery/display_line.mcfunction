# Macro: Display one biome's mastery info
# Args: id (int), name (string)

# Read this biome's time
$execute store result score #bm_time ec.temp run scoreboard players get @s ec.bm$(id)

# Compute level
scoreboard players set #bm_lvl ec.temp 0
execute if score #bm_time ec.temp matches 1800.. run scoreboard players set #bm_lvl ec.temp 1
execute if score #bm_time ec.temp matches 7200.. run scoreboard players set #bm_lvl ec.temp 2
execute if score #bm_time ec.temp matches 21600.. run scoreboard players set #bm_lvl ec.temp 3
execute if score #bm_time ec.temp matches 54000.. run scoreboard players set #bm_lvl ec.temp 4
execute if score #bm_time ec.temp matches 108000.. run scoreboard players set #bm_lvl ec.temp 5

# Convert seconds to hours (integer division by 3600)
scoreboard players operation #bm_hrs ec.temp = #bm_time ec.temp
scoreboard players operation #bm_hrs ec.temp /= #3600 ec.const

# Display based on level
$execute if score #bm_lvl ec.temp matches 0 run tellraw @s [{text:"  . ",color:"dark_gray"},{text:"$(name)",color:"gray"},{text:" — ",color:"dark_gray"},{score:{name:"#bm_hrs",objective:"ec.temp"},color:"white"},{text:"h",color:"gray"}]
$execute if score #bm_lvl ec.temp matches 1 run tellraw @s [{text:"  * ",color:"white"},{text:"$(name)",color:"white"},{text:" — ",color:"dark_gray"},{score:{name:"#bm_hrs",objective:"ec.temp"},color:"white"},{text:"h (Visitor)",color:"gray"}]
$execute if score #bm_lvl ec.temp matches 2 run tellraw @s [{text:"  ** ",color:"aqua"},{text:"$(name)",color:"aqua"},{text:" — ",color:"dark_gray"},{score:{name:"#bm_hrs",objective:"ec.temp"},color:"white"},{text:"h (Familiar)",color:"gray"}]
$execute if score #bm_lvl ec.temp matches 3 run tellraw @s [{text:"  *** ",color:"#4FC3F7"},{text:"$(name)",color:"#4FC3F7"},{text:" — ",color:"dark_gray"},{score:{name:"#bm_hrs",objective:"ec.temp"},color:"white"},{text:"h (Resident)",color:"gray"}]
$execute if score #bm_lvl ec.temp matches 4 run tellraw @s [{text:"  **** ",color:"#AB47BC"},{text:"$(name)",color:"#AB47BC"},{text:" — ",color:"dark_gray"},{score:{name:"#bm_hrs",objective:"ec.temp"},color:"white"},{text:"h (Warden)",color:"gray"}]
$execute if score #bm_lvl ec.temp matches 5 run tellraw @s [{text:"  ***** ",color:"gold"},{text:"$(name)",color:"gold",bold:true},{text:" — Master!",color:"gold"}]

scoreboard players add #bm_shown ec.temp 1
