# Dream History — Constellation Summary
# Counts completed constellations from bitfield ec.cn_done

tellraw @s [{text:"  ◆ ",color:"light_purple"},{text:"Constellations:",color:"gray"}]

execute unless score @s ec.cn_done matches 1.. run tellraw @s [{text:"    ○ ",color:"dark_gray"},{text:"No constellations completed",color:"dark_gray"},{text:" (+0.25 each)",color:"dark_gray"}]
execute unless score @s ec.cn_done matches 1.. run return 0

# Count bits (same logic as constellations.mcfunction)
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

tellraw @s [{text:"    ✓ ",color:"green"},{score:{name:"#cn_count",objective:"ec.temp"},color:"gold"},{text:"/10 completed",color:"gray"},{text:" (+0.25 each)",color:"dark_gray"}]
