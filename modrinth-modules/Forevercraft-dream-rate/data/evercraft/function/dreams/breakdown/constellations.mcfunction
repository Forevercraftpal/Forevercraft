# Dream Rate Breakdown — Artifact Constellations
# Shows constellation DR bonus if any constellations are complete

execute unless score @s ec.cn_done matches 1.. run return 0

# Count completed constellations
scoreboard players set #cn_count ec.temp 0
scoreboard players operation #cn_bit ec.temp = @s ec.cn_done
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #2 ec.const
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players set #cn_div ec.temp 4
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #8 ec.const
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players set #cn_div ec.temp 16
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players set #cn_div ec.temp 32
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players set #cn_div ec.temp 64
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players set #cn_div ec.temp 128
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players set #cn_div ec.temp 256
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp
scoreboard players set #cn_div ec.temp 512
scoreboard players operation #cn_test ec.temp = #cn_bit ec.temp
scoreboard players operation #cn_test ec.temp /= #cn_div ec.temp
scoreboard players operation #cn_test ec.temp %= #2 ec.const
scoreboard players operation #cn_count ec.temp += #cn_test ec.temp

# Header with progress count
tellraw @s [{text:"  ★ Constellations: ",color:"light_purple"},{score:{name:"#cn_count",objective:"ec.temp"},color:"gold",bold:true},{text:"/10",color:"gray"}]

# Display with accurate decimal values (0.25 per constellation)
execute if score #cn_count ec.temp matches 1 run tellraw @s [{text:"    Constellations (1): ",color:"gray"},{text:"+0.25",color:"green"}]
execute if score #cn_count ec.temp matches 2 run tellraw @s [{text:"    Constellations (2): ",color:"gray"},{text:"+0.50",color:"green"}]
execute if score #cn_count ec.temp matches 3 run tellraw @s [{text:"    Constellations (3): ",color:"gray"},{text:"+0.75",color:"green"}]
execute if score #cn_count ec.temp matches 4 run tellraw @s [{text:"    Constellations (4): ",color:"gray"},{text:"+1.00",color:"green"}]
execute if score #cn_count ec.temp matches 5 run tellraw @s [{text:"    Constellations (5): ",color:"gray"},{text:"+1.25",color:"green"}]
execute if score #cn_count ec.temp matches 6 run tellraw @s [{text:"    Constellations (6): ",color:"gray"},{text:"+1.50",color:"green"}]
execute if score #cn_count ec.temp matches 7 run tellraw @s [{text:"    Constellations (7): ",color:"gray"},{text:"+1.75",color:"green"}]
execute if score #cn_count ec.temp matches 8 run tellraw @s [{text:"    Constellations (8): ",color:"gray"},{text:"+2.00",color:"green"}]
execute if score #cn_count ec.temp matches 9 run tellraw @s [{text:"    Constellations (9): ",color:"gray"},{text:"+2.25",color:"green"}]
execute if score #cn_count ec.temp matches 10 run tellraw @s [{text:"    Constellations (10): ",color:"gray"},{text:"+2.50",color:"green"}]
