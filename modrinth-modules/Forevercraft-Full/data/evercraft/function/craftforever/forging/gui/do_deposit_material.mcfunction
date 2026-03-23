# Artisan Forge — Do Deposit Material (runs as player)
# Check mainhand for forge materials and deposit them

# Already deposited?
execute if score @s ec.cf_mat_tier matches 0.. run return run tellraw @s [{text:"Material already deposited!",color:"red"}]

# Check each tier via clear ... 0 (returns count found, does NOT remove)
# store result (not success) to get actual item count for >= 3 check
scoreboard players set @s ec.cf_mat_tier -1

execute store result score #cf_count ec.cf_temp run clear @s paper[custom_data~{forge_mat:"scrap"}] 0
execute if score #cf_count ec.cf_temp matches 3.. run scoreboard players set @s ec.cf_mat_tier 0

execute if score @s ec.cf_mat_tier matches -1 store result score #cf_count ec.cf_temp run clear @s paper[custom_data~{forge_mat:"tempered"}] 0
execute if score #cf_count ec.cf_temp matches 3.. if score @s ec.cf_mat_tier matches -1 run scoreboard players set @s ec.cf_mat_tier 1

execute if score @s ec.cf_mat_tier matches -1 store result score #cf_count ec.cf_temp run clear @s paper[custom_data~{forge_mat:"starforged"}] 0
execute if score #cf_count ec.cf_temp matches 3.. if score @s ec.cf_mat_tier matches -1 run scoreboard players set @s ec.cf_mat_tier 2

execute if score @s ec.cf_mat_tier matches -1 store result score #cf_count ec.cf_temp run clear @s paper[custom_data~{forge_mat:"dreamwrought"}] 0
execute if score #cf_count ec.cf_temp matches 3.. if score @s ec.cf_mat_tier matches -1 run scoreboard players set @s ec.cf_mat_tier 3

execute if score @s ec.cf_mat_tier matches -1 store result score #cf_count ec.cf_temp run clear @s paper[custom_data~{forge_mat:"eternal"}] 0
execute if score #cf_count ec.cf_temp matches 3.. if score @s ec.cf_mat_tier matches -1 run scoreboard players set @s ec.cf_mat_tier 4

execute if score @s ec.cf_mat_tier matches -1 store result score #cf_count ec.cf_temp run clear @s paper[custom_data~{forge_mat:"soulbound"}] 0
execute if score #cf_count ec.cf_temp matches 3.. if score @s ec.cf_mat_tier matches -1 run scoreboard players set @s ec.cf_mat_tier 5

# No valid material found (or not enough — need 3)
execute if score @s ec.cf_mat_tier matches -1 run return run tellraw @s [{text:"You need 3 of a forging material!",color:"red"}]

# Remove exactly 3 of the matched material
execute if score @s ec.cf_mat_tier matches 0 run clear @s paper[custom_data~{forge_mat:"scrap"}] 3
execute if score @s ec.cf_mat_tier matches 1 run clear @s paper[custom_data~{forge_mat:"tempered"}] 3
execute if score @s ec.cf_mat_tier matches 2 run clear @s paper[custom_data~{forge_mat:"starforged"}] 3
execute if score @s ec.cf_mat_tier matches 3 run clear @s paper[custom_data~{forge_mat:"dreamwrought"}] 3
execute if score @s ec.cf_mat_tier matches 4 run clear @s paper[custom_data~{forge_mat:"eternal"}] 3
execute if score @s ec.cf_mat_tier matches 5 run clear @s paper[custom_data~{forge_mat:"soulbound"}] 3

# Update display
execute if score @s ec.cf_mat_tier matches 0 at @s run data modify entity @e[type=text_display,tag=CF.MatLine,distance=..7,limit=1] text set value [{text:"Material: ",color:"gray"},{text:"3x Scrap Metal",color:"white"}]
execute if score @s ec.cf_mat_tier matches 1 at @s run data modify entity @e[type=text_display,tag=CF.MatLine,distance=..7,limit=1] text set value [{text:"Material: ",color:"gray"},{text:"3x Tempered Alloy",color:"white"}]
execute if score @s ec.cf_mat_tier matches 2 at @s run data modify entity @e[type=text_display,tag=CF.MatLine,distance=..7,limit=1] text set value [{text:"Material: ",color:"gray"},{text:"3x Starforged Ingot",color:"blue"}]
execute if score @s ec.cf_mat_tier matches 3 at @s run data modify entity @e[type=text_display,tag=CF.MatLine,distance=..7,limit=1] text set value [{text:"Material: ",color:"gray"},{text:"3x Dreamwrought Bar",color:"dark_purple"}]
execute if score @s ec.cf_mat_tier matches 4 at @s run data modify entity @e[type=text_display,tag=CF.MatLine,distance=..7,limit=1] text set value [{text:"Material: ",color:"gray"},{text:"3x Eternal Essence",color:"gold"}]
execute if score @s ec.cf_mat_tier matches 5 at @s run data modify entity @e[type=text_display,tag=CF.MatLine,distance=..7,limit=1] text set value [{text:"Material: ",color:"gray"},{text:"3x Soulbound Core",color:"white",bold:true}]

playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.2

# Try recipe match
function evercraft:craftforever/forging/recipes/match_recipe
