# Profession Daily Special — Pick today's featured profession
# Called from calendar/dawn_check (new day)
# Uses visual_day % 9 to cycle through 9 refreshable professions (excludes Nymph, Wise Wanderer)

execute store result score #prof_daily ec.var run time query day
scoreboard players set #9_temp ec.temp 9
scoreboard players operation #prof_daily ec.var %= #9_temp ec.temp

# Force trade refresh for all custom villagers (clears ec.trades_set)
tag @e[type=minecraft:villager,tag=ec.trades_set] remove ec.trades_set

# Store profession name for morning news broadcast
execute if score #prof_daily ec.var matches 0 run data modify storage evercraft:news daily_profession set value "Artificer"
execute if score #prof_daily ec.var matches 1 run data modify storage evercraft:news daily_profession set value "Bartender"
execute if score #prof_daily ec.var matches 2 run data modify storage evercraft:news daily_profession set value "Apiarist"
execute if score #prof_daily ec.var matches 3 run data modify storage evercraft:news daily_profession set value "Technician"
execute if score #prof_daily ec.var matches 4 run data modify storage evercraft:news daily_profession set value "Expeditionist"
execute if score #prof_daily ec.var matches 5 run data modify storage evercraft:news daily_profession set value "Archer"
execute if score #prof_daily ec.var matches 6 run data modify storage evercraft:news daily_profession set value "Spelunker"
execute if score #prof_daily ec.var matches 7 run data modify storage evercraft:news daily_profession set value "Retired Adventurer"
execute if score #prof_daily ec.var matches 8 run data modify storage evercraft:news daily_profession set value "Zookeeper"
