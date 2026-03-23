# Handle slot click — macro {slot:N}
# Runs as interaction entity

# Clear interaction data
data remove entity @s interaction

# Set slot number to temp scoreboard
$scoreboard players set #gi_slot ec.temp $(slot)

# Dispatch to current page describe function
$execute as @p[tag=ec.InGachaInfo,distance=..5] if score @s ec.gacha_page matches 1 run function evercraft:gacha/fountain/info/describe/page1 {slot:$(slot)}
$execute as @p[tag=ec.InGachaInfo,distance=..5] if score @s ec.gacha_page matches 2 run function evercraft:gacha/fountain/info/describe/page2 {slot:$(slot)}
$execute as @p[tag=ec.InGachaInfo,distance=..5] if score @s ec.gacha_page matches 3 run function evercraft:gacha/fountain/info/describe/page3 {slot:$(slot)}

playsound minecraft:ui.button.click master @p[tag=ec.InGachaInfo,distance=..5] ~ ~ ~ 0.3 1.2
