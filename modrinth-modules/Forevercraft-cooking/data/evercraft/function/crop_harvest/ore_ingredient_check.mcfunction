# Ore Mining — 3% chance to drop a forging ingredient when mining any ore
# Run as each player at their position via "execute as @a at @s run function"
# Since this is a function call, each player completes fully before the next — fake player scores are safe here
# Uses delta from existing ec.break_* scoreboards (treasure system) to detect new ore breaks

# Sum all ore break scores into #ore_now
scoreboard players set #ore_now ec.temp 0
scoreboard players operation #ore_now ec.temp += @s ec.break_iron_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_coal_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_gold_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_diamond_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_copper_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_redstone_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_emerald_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_lapis_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_iron_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_coal_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_gold_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_diamond_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_copper_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_redstone_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_emerald_ore
scoreboard players operation #ore_now ec.temp += @s ec.break_d_lapis_ore

# First-time init: if ore_prev has never been set, seed it to current total
# This prevents a false delta spike from lifetime ore count on first run
# (delta will be 0 this tick since ore_prev = ore_now, so no roll fires)
execute unless score @s ec.ore_prev matches -2147483648.. run scoreboard players operation @s ec.ore_prev = #ore_now ec.temp

# Compute delta (ores mined since last check)
scoreboard players operation #ore_delta ec.temp = #ore_now ec.temp
scoreboard players operation #ore_delta ec.temp -= @s ec.ore_prev

# 3% chance if any ore was mined this tick
execute if score #ore_delta ec.temp matches 1.. store result score #ore_roll ec.temp run random value 1..100
execute if score #ore_delta ec.temp matches 1.. if score #ore_roll ec.temp matches 1..3 run loot spawn ~ ~ ~ loot evercraft:ingredients/random_forging
execute if score #ore_delta ec.temp matches 1.. if score #ore_roll ec.temp matches 1..3 run tellraw @s [{text:"[Mining] ",color:"gray"},{text:"A forging material was lodged in the ore!",color:"yellow"}]

# Update previous total
scoreboard players operation @s ec.ore_prev = #ore_now ec.temp
