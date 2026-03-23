# Infinite Castle — Start (called from dungeon/start when not at a structure)
# Run as: player who consumed the dungeon key
# Key has already been consumed by the advancement — we return it and re-consume later

# Check if a castle or dungeon is already active
execute if score #ic_active ec.var matches 1 run loot give @s loot evercraft:dungeon/key
execute if score #ic_active ec.var matches 1 run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"An Infinite Castle run is already in progress! Key returned.",color:"red"}]
execute if score #ic_active ec.var matches 1 run return 0

execute if score #dg_active ec.var matches 1 run loot give @s loot evercraft:dungeon/key
execute if score #dg_active ec.var matches 1 run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"A dungeon is already in progress! Key returned.",color:"red"}]
execute if score #dg_active ec.var matches 1 run return 0

# Daily limit check (3 runs per day) — reset if new day
execute store result score #current_day ec.temp run time query day
execute unless score @s ic.last_day = #current_day ec.temp run scoreboard players set @s ic.today 0
scoreboard players operation @s ic.last_day = #current_day ec.temp
execute if score @s ic.today matches 3.. run loot give @s loot evercraft:dungeon/key
execute if score @s ic.today matches 3.. run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"You've reached your daily castle limit (3/3)! Key returned.",color:"red"}]
execute if score @s ic.today matches 3.. run return 0

# Check if player is in a GUI menu
execute if entity @s[tag=Adv.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=Adv.InMenu] run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=Adv.InMenu] run return 0
execute if entity @s[tag=IC.InMenu] run loot give @s loot evercraft:dungeon/key
execute if entity @s[tag=IC.InMenu] run tellraw @s [{text:"[Castle] ",color:"dark_red"},{text:"Close your menu first! Key returned.",color:"red"}]
execute if entity @s[tag=IC.InMenu] run return 0

# Return the 1 key consumed by advancement — begin.mcfunction will consume the correct amount
loot give @s loot evercraft:dungeon/key

# Open the continue/restart menu
execute at @s run function evercraft:castle/menu/open
