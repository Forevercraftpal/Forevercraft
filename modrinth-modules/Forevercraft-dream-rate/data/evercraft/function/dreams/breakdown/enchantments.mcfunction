# Dream Rate Breakdown — Enchantment Bonus
# Fortune/Looting/Luck of the Sea contribute to dream rate via ec_enchant_dream_luck

scoreboard players set #dr_any ec.temp 0

# Get enchantment modifier value (scaled x10)
execute store result score #dr_ench ec.temp run attribute @s luck modifier value get ec_enchant_dream_luck 10

# Only show if non-zero
execute if score #dr_ench ec.temp matches 1.. run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Enchantments:",color:"gray"}]
execute if score #dr_ench ec.temp matches 1.. run scoreboard players set #dr_any ec.temp 1

# Display with decimal
scoreboard players set #10 ec.const 10
scoreboard players operation #ench_dec ec.temp = #dr_ench ec.temp
scoreboard players operation #ench_dec ec.temp %= #10 ec.const
scoreboard players operation #dr_ench ec.temp /= #10 ec.const

execute if score #dr_any ec.temp matches 1 run tellraw @s [{text:"    Held Enchantments",color:"aqua"},{text:"        +",color:"gold"},{score:{name:"#dr_ench",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#ench_dec",objective:"ec.temp"},color:"gold"}]
