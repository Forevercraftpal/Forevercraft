# Artisan Forge — Do Deposit Catalyst (runs as player)

# Already deposited?
execute if score @s ec.cf_cat_tier matches 0.. run return run tellraw @s [{text:"Catalyst already deposited!",color:"red"}]

scoreboard players set @s ec.cf_cat_tier -1

# Check for each catalyst type
execute store success score #cf_found ec.cf_temp run clear @s charcoal 0
execute if score #cf_found ec.cf_temp matches 1 run scoreboard players set @s ec.cf_cat_tier 0

execute if score @s ec.cf_cat_tier matches -1 store success score #cf_found ec.cf_temp run clear @s blaze_powder 0
execute if score #cf_found ec.cf_temp matches 1 if score @s ec.cf_cat_tier matches -1 run scoreboard players set @s ec.cf_cat_tier 1

execute if score @s ec.cf_cat_tier matches -1 store success score #cf_found ec.cf_temp run clear @s heart_of_the_sea 0
execute if score #cf_found ec.cf_temp matches 1 if score @s ec.cf_cat_tier matches -1 run scoreboard players set @s ec.cf_cat_tier 2

execute if score @s ec.cf_cat_tier matches -1 store success score #cf_found ec.cf_temp run clear @s nether_star 0
execute if score #cf_found ec.cf_temp matches 1 if score @s ec.cf_cat_tier matches -1 run scoreboard players set @s ec.cf_cat_tier 3

execute if score @s ec.cf_cat_tier matches -1 store success score #cf_found ec.cf_temp run clear @s paper[custom_data~{spirit_treat:1b}] 0
execute if score #cf_found ec.cf_temp matches 1 if score @s ec.cf_cat_tier matches -1 run scoreboard players set @s ec.cf_cat_tier 4

# No valid catalyst found
execute if score @s ec.cf_cat_tier matches -1 run return run tellraw @s [{text:"Hold a valid catalyst in your hand!",color:"red"}]

# Remove 1 catalyst
execute if score @s ec.cf_cat_tier matches 0 run clear @s charcoal 1
execute if score @s ec.cf_cat_tier matches 1 run clear @s blaze_powder 1
execute if score @s ec.cf_cat_tier matches 2 run clear @s heart_of_the_sea 1
execute if score @s ec.cf_cat_tier matches 3 run clear @s nether_star 1
execute if score @s ec.cf_cat_tier matches 4 run clear @s paper[custom_data~{spirit_treat:1b}] 1

# Update display
execute if score @s ec.cf_cat_tier matches 0 at @s run data modify entity @e[type=text_display,tag=CF.CatLine,distance=..7,limit=1] text set value [{text:"Catalyst: ",color:"gray"},{text:"Charcoal",color:"yellow"}]
execute if score @s ec.cf_cat_tier matches 1 at @s run data modify entity @e[type=text_display,tag=CF.CatLine,distance=..7,limit=1] text set value [{text:"Catalyst: ",color:"gray"},{text:"Blaze Powder",color:"gold"}]
execute if score @s ec.cf_cat_tier matches 2 at @s run data modify entity @e[type=text_display,tag=CF.CatLine,distance=..7,limit=1] text set value [{text:"Catalyst: ",color:"gray"},{text:"Heart of the Sea",color:"aqua"}]
execute if score @s ec.cf_cat_tier matches 3 at @s run data modify entity @e[type=text_display,tag=CF.CatLine,distance=..7,limit=1] text set value [{text:"Catalyst: ",color:"gray"},{text:"Nether Star",color:"light_purple"}]
execute if score @s ec.cf_cat_tier matches 4 at @s run data modify entity @e[type=text_display,tag=CF.CatLine,distance=..7,limit=1] text set value [{text:"Catalyst: ",color:"gray"},{text:"Spirit Treat",color:"white",bold:true}]

playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.5 1.2

# Try recipe match
function evercraft:craftforever/forging/recipes/match_recipe
