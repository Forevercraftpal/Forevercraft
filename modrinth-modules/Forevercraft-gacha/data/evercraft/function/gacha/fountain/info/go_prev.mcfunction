# Go to previous page
# Runs as interaction entity

data remove entity @s interaction

# Don't go below page 1
execute as @p[tag=ec.InGachaInfo,distance=..5] if score @s ec.gacha_page matches 1 run return 0

# Decrement page
execute as @p[tag=ec.InGachaInfo,distance=..5] run scoreboard players remove @s ec.gacha_page 1

# Refresh
execute as @p[tag=ec.InGachaInfo,distance=..5] at @s run function evercraft:gacha/fountain/info/refresh_page

playsound minecraft:ui.button.click master @p[tag=ec.InGachaInfo,distance=..5] ~ ~ ~ 0.3 1.0
