# Dream Rate Breakdown — Cooking Buffs
# Well-Fed (+0.5 DR from any meal) and Fortune Meal (variable DR from fortune meals)

scoreboard players set #dr_any ec.temp 0

# Well-Fed modifier (+0.5 from any cooked meal)
execute store result score #dr_wf ec.temp run attribute @s luck modifier value get evercraft:well_fed 10
execute if score #dr_wf ec.temp matches 1.. if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Cooking:",color:"gray"}]
execute if score #dr_wf ec.temp matches 1.. run scoreboard players set #dr_any ec.temp 1

# Display Well-Fed with decimal
scoreboard players set #10 ec.const 10
scoreboard players operation #wf_whole ec.temp = #dr_wf ec.temp
scoreboard players operation #wf_whole ec.temp /= #10 ec.const
scoreboard players operation #wf_dec ec.temp = #dr_wf ec.temp
scoreboard players operation #wf_dec ec.temp %= #10 ec.const
execute if score #dr_wf ec.temp matches 1.. run tellraw @s [{text:"    Well-Fed",color:"green"},{text:"              +",color:"gold"},{score:{name:"#wf_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#wf_dec",objective:"ec.temp"},color:"gold"}]

# Fortune Meal modifier (variable, from fortune category meals)
execute store result score #dr_fm ec.temp run attribute @s luck modifier value get evercraft:fortune_meal 10
execute if score #dr_fm ec.temp matches 1.. if score #dr_any ec.temp matches 0 run tellraw @s [{text:"  ◆ ",color:"dark_purple"},{text:"Cooking:",color:"gray"}]
execute if score #dr_fm ec.temp matches 1.. run scoreboard players set #dr_any ec.temp 1

# Display Fortune Meal with decimal
scoreboard players operation #fm_whole ec.temp = #dr_fm ec.temp
scoreboard players operation #fm_whole ec.temp /= #10 ec.const
scoreboard players operation #fm_dec ec.temp = #dr_fm ec.temp
scoreboard players operation #fm_dec ec.temp %= #10 ec.const
execute if score #dr_fm ec.temp matches 1.. run tellraw @s [{text:"    Fortune Meal",color:"light_purple"},{text:"          +",color:"gold"},{score:{name:"#fm_whole",objective:"ec.temp"},color:"gold"},{text:".",color:"gold"},{score:{name:"#fm_dec",objective:"ec.temp"},color:"gold"}]
