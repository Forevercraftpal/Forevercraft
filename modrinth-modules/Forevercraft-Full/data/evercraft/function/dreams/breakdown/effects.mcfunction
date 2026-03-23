# Dream Rate Breakdown — Active Potion/Effect Bonuses
# Detects Luck effect from potions, True Shot, Tidal Call, set 5pc

scoreboard players set #dr_any ec.temp 0

# Potion bonus modifier (only active when Luck effect is present)
execute store result score #dr_pot ec.temp run attribute @s luck modifier value get ec_luck_potion_bonus 10
execute if score #dr_pot ec.temp matches 1.. run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Active Effects:",color:"gray"}]
execute if score #dr_pot ec.temp matches 1.. run scoreboard players set #dr_any ec.temp 1

# Display with decimal
scoreboard players set #10 ec.const 10
scoreboard players operation #pot_dec ec.temp = #dr_pot ec.temp
scoreboard players operation #pot_dec ec.temp %= #10 ec.const
scoreboard players operation #dr_pot ec.temp /= #10 ec.const

execute if score #dr_any ec.temp matches 1 run tellraw @s [{text:"    Active Dreams Effect",color:"light_purple"},{text:"       +",color:"gold"},{score:{name:"#dr_pot",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#pot_dec",objective:"ec.temp"},color:"gold"}]
