# Artisan Forge — Match Recipe
# Checks deposited mat_tier + cat_tier against known recipes
# Sets ec.cf_recipe (1-5) and state=2 on match

scoreboard players set @s ec.cf_recipe 0

# Recipe 1: 3x Scrap Metal + Charcoal → Tempered Alloy (Rank 1+)
execute if score @s ec.cf_mat_tier matches 0 if score @s ec.cf_cat_tier matches 0 run scoreboard players set @s ec.cf_recipe 1

# Recipe 2: 3x Tempered Alloy + Blaze Powder → Starforged Ingot (Rank 20+)
execute if score @s ec.cf_mat_tier matches 1 if score @s ec.cf_cat_tier matches 1 run scoreboard players set @s ec.cf_recipe 2

# Recipe 3: 3x Starforged Ingot + Heart of the Sea → Dreamwrought Bar (Rank 40+)
execute if score @s ec.cf_mat_tier matches 2 if score @s ec.cf_cat_tier matches 2 run scoreboard players set @s ec.cf_recipe 3

# Recipe 4: 3x Dreamwrought Bar + Nether Star → Eternal Essence (Rank 60+)
execute if score @s ec.cf_mat_tier matches 3 if score @s ec.cf_cat_tier matches 3 run scoreboard players set @s ec.cf_recipe 4

# Recipe 5: 3x Eternal Essence + Spirit Treat → Soulbound Core (Rank 80+)
execute if score @s ec.cf_mat_tier matches 4 if score @s ec.cf_cat_tier matches 4 run scoreboard players set @s ec.cf_recipe 5

# No match yet (need both material + catalyst)
execute if score @s ec.cf_recipe matches 0 run return 0

# Rank check
execute if score @s ec.cf_recipe matches 2 unless score @s ec.cf_rank matches 20.. run scoreboard players set @s ec.cf_recipe 0
execute if score @s ec.cf_recipe matches 2 unless score @s ec.cf_rank matches 20.. at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value {text:"Requires Artisan Rank 20!",color:"red"}
execute if score @s ec.cf_recipe matches 0 run return 0

execute if score @s ec.cf_recipe matches 3 unless score @s ec.cf_rank matches 40.. run scoreboard players set @s ec.cf_recipe 0
execute if score @s ec.cf_recipe matches 3 unless score @s ec.cf_rank matches 40.. at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value {text:"Requires Artisan Rank 40!",color:"red"}
execute if score @s ec.cf_recipe matches 0 run return 0

execute if score @s ec.cf_recipe matches 4 unless score @s ec.cf_rank matches 60.. run scoreboard players set @s ec.cf_recipe 0
execute if score @s ec.cf_recipe matches 4 unless score @s ec.cf_rank matches 60.. at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value {text:"Requires Artisan Rank 60!",color:"red"}
execute if score @s ec.cf_recipe matches 0 run return 0

execute if score @s ec.cf_recipe matches 5 unless score @s ec.cf_rank matches 80.. run scoreboard players set @s ec.cf_recipe 0
execute if score @s ec.cf_recipe matches 5 unless score @s ec.cf_rank matches 80.. at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value {text:"Requires Artisan Rank 80!",color:"red"}
execute if score @s ec.cf_recipe matches 0 run return 0

# Recipe matched — update state and display
scoreboard players set @s ec.cf_state 2

# Update recipe status line
execute if score @s ec.cf_recipe matches 1 at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value [{text:"Recipe: ",color:"gray"},{text:"Tempered Alloy",color:"white"}]
execute if score @s ec.cf_recipe matches 2 at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value [{text:"Recipe: ",color:"gray"},{text:"Starforged Ingot",color:"blue"}]
execute if score @s ec.cf_recipe matches 3 at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value [{text:"Recipe: ",color:"gray"},{text:"Dreamwrought Bar",color:"dark_purple"}]
execute if score @s ec.cf_recipe matches 4 at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value [{text:"Recipe: ",color:"gray"},{text:"Eternal Essence",color:"gold"}]
execute if score @s ec.cf_recipe matches 5 at @s run data modify entity @e[type=text_display,tag=CF.RecipeStatus,distance=..7,limit=1] text set value [{text:"Recipe: ",color:"gray"},{text:"Soulbound Core",color:"white",bold:true}]

# Light up the forge button
execute at @s run data modify entity @e[type=text_display,tag=CF.ForgeText,distance=..7,limit=1] text set value {text:"[ Begin Forging ]",color:"gold",bold:true}

playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.5 1.5
tellraw @s [{text:"Recipe matched! Click ",color:"green"},{text:"Begin Forging",color:"gold",bold:true},{text:" to start.",color:"green"}]
