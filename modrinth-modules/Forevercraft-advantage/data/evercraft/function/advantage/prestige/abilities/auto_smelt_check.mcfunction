# Blacksmith P3: Auto-Smelt — give bonus smelted ore on mine
# Called per-tick for players with adv.pa_blac3=1
# Only the 3 smeltable ore types: iron, gold, copper (others drop gems directly)

# Sum smeltable ore stats
scoreboard players set #ore_rt adv.temp 0
scoreboard players operation #ore_rt adv.temp += @s ec.break_iron_ore
scoreboard players operation #ore_rt adv.temp += @s ec.break_d_iron_ore
scoreboard players operation #ore_rt adv.temp += @s ec.break_gold_ore
scoreboard players operation #ore_rt adv.temp += @s ec.break_d_gold_ore
scoreboard players operation #ore_rt adv.temp += @s ec.break_copper_ore
scoreboard players operation #ore_rt adv.temp += @s ec.break_d_copper_ore
scoreboard players operation #ore_rt adv.temp += @s ec.break_nether_gold_ore

# First tick init
execute unless score @s adv.ore_prev matches -2147483648.. run scoreboard players operation @s adv.ore_prev = #ore_rt adv.temp
execute unless score @s adv.ore_prev matches -2147483648.. run return 0

# No change — skip
execute if score #ore_rt adv.temp = @s adv.ore_prev run return 0

# An ore was broken — detect which type
# Iron (overworld + deepslate) → iron_ingot
scoreboard players operation #prev adv.temp = @s adv.smelt_iron_pv
scoreboard players set #cur adv.temp 0
scoreboard players operation #cur adv.temp += @s ec.break_iron_ore
scoreboard players operation #cur adv.temp += @s ec.break_d_iron_ore
execute unless score #cur adv.temp = #prev adv.temp run give @s iron_ingot 1
scoreboard players operation @s adv.smelt_iron_pv = #cur adv.temp

# Gold (overworld + deepslate + nether) → gold_ingot
scoreboard players operation #prev adv.temp = @s adv.smelt_gold_pv
scoreboard players set #cur adv.temp 0
scoreboard players operation #cur adv.temp += @s ec.break_gold_ore
scoreboard players operation #cur adv.temp += @s ec.break_d_gold_ore
scoreboard players operation #cur adv.temp += @s ec.break_nether_gold_ore
execute unless score #cur adv.temp = #prev adv.temp run give @s gold_ingot 1
scoreboard players operation @s adv.smelt_gold_pv = #cur adv.temp

# Copper (overworld + deepslate) → copper_ingot
scoreboard players operation #prev adv.temp = @s adv.smelt_cop_pv
scoreboard players set #cur adv.temp 0
scoreboard players operation #cur adv.temp += @s ec.break_copper_ore
scoreboard players operation #cur adv.temp += @s ec.break_d_copper_ore
execute unless score #cur adv.temp = #prev adv.temp run give @s copper_ingot 1
scoreboard players operation @s adv.smelt_cop_pv = #cur adv.temp

# Update ore total snapshot
scoreboard players operation @s adv.ore_prev = #ore_rt adv.temp

# Feedback
playsound minecraft:block.furnace.fire_crackle master @s ~ ~ ~ 0.5 1.5
title @s actionbar [{text:"Auto-Smelt!",color:"gold"}]
