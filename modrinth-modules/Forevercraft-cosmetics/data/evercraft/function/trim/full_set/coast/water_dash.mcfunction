# Coast Trim - Water Dash (Full Set)
# Launches player forward in water like riptide

# Only work if in water
execute unless entity @s[predicate=evercraft:trim/in_water] run tellraw @s [{"text":"[Coast Trim] ","color":"aqua"},{"text":"You must be in water to use Water Dash!","color":"red"}]
execute unless entity @s[predicate=evercraft:trim/in_water] run return 0

# Calculate facing direction and launch player
execute at @s anchored eyes run summon marker ^ ^ ^8 {Tags:["coast_dash_target"]}
execute facing entity @n[type=marker,tag=coast_dash_target] feet run tp @s ~ ~ ~ ~ ~
execute at @s run tp @s ^ ^ ^6

# Effects
playsound minecraft:entity.dolphin.jump player @s ~ ~ ~ 1 1.2
playsound minecraft:entity.player.splash player @s ~ ~ ~ 0.5 1.5
particle minecraft:bubble ~ ~ ~ 0.5 0.5 0.5 0.1 30

# Clean up
kill @e[type=marker,tag=coast_dash_target]

tellraw @s [{"text":"[Coast Trim] ","color":"aqua"},{"text":"Whoosh!","color":"white","italic":true}]
