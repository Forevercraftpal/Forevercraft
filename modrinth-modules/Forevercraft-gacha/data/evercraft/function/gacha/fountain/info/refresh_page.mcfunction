# Refresh page — kill old slots, spawn new page, update page text
# Runs as @s = player with ec.InGachaInfo, at @s

# Kill existing slot entities
execute as @e[tag=ec.GachaInfoSlot,distance=..5] run kill @s

# Spawn new page items at anchor position
execute if score @s ec.gacha_page matches 1 as @e[tag=ec.GachaInfoAnchor,distance=..5] at @s run function evercraft:gacha/fountain/info/page1
execute if score @s ec.gacha_page matches 2 as @e[tag=ec.GachaInfoAnchor,distance=..5] at @s run function evercraft:gacha/fountain/info/page2
execute if score @s ec.gacha_page matches 3 as @e[tag=ec.GachaInfoAnchor,distance=..5] at @s run function evercraft:gacha/fountain/info/page3

# Update page number display
execute if score @s ec.gacha_page matches 1 as @e[tag=ec.GachaInfoPage,distance=..5] run data modify entity @s text set value {text:"Page 1/3",color:"gray"}
execute if score @s ec.gacha_page matches 2 as @e[tag=ec.GachaInfoPage,distance=..5] run data modify entity @s text set value {text:"Page 2/3",color:"gray"}
execute if score @s ec.gacha_page matches 3 as @e[tag=ec.GachaInfoPage,distance=..5] run data modify entity @s text set value {text:"Page 3/3",color:"gray"}
