# ============================================================
# Refresh Feast Platter Category Recipes (runs as player)
# 4 recipes: Warrior's Banquet, Explorer's Spread, Miner's Table, Eternal Feast
# ============================================================

# === Slot 0: Warrior's Banquet — 4 Aged Venison + 2 Golden Carrot + 1 Honeycomb ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 4.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches ..3 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s minecraft:golden_carrot 0
execute if score #ck_i2 ec.temp matches 2.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches ..1 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:honeycomb 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Warrior's Banquet"
data modify storage evercraft:cooking r_tier_color set value "#FF6B6B"
data modify storage evercraft:cooking i1_name set value "Aged Venison x4"
data modify storage evercraft:cooking i2_name set value "Golden Carrot x2"
data modify storage evercraft:cooking i3_name set value "Honeycomb"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 1: Explorer's Spread — 2 Baked Potato + 2 Salted Fish + 1 Glow Berry + 1 Sweet Berry ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:baked_potato 0
execute if score #ck_i1 ec.temp matches 2.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches ..1 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s cooked_salmon[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_i2 ec.temp matches 2.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches ..1 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:glow_berries 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Explorer's Spread"
data modify storage evercraft:cooking r_tier_color set value "#4FC3F7"
data modify storage evercraft:cooking i1_name set value "Baked Potato x2"
data modify storage evercraft:cooking i2_name set value "Salted Fish x2"
data modify storage evercraft:cooking i3_name set value "Glow Berry + Sweet Berry"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Miner's Table — 2 Smoked Boar + 2 Golden Carrot + 1 Mushroom Stew + 1 Honeycomb ===
execute store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_i1 ec.temp matches 2.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches ..1 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s minecraft:golden_carrot 0
execute if score #ck_i2 ec.temp matches 2.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches ..1 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:mushroom_stew 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Miner's Table"
data modify storage evercraft:cooking r_tier_color set value "#FFB74D"
data modify storage evercraft:cooking i1_name set value "Smoked Boar x2"
data modify storage evercraft:cooking i2_name set value "Golden Carrot x2"
data modify storage evercraft:cooking i3_name set value "M. Stew + Honeycomb"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Eternal Feast — 1 of each Spirit Fish ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"voidfin"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"starscale"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"deepcurrent"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Eternal Feast"
data modify storage evercraft:cooking r_tier_color set value "#FFD700"
data modify storage evercraft:cooking i1_name set value "Voidfin"
data modify storage evercraft:cooking i2_name set value "Starscale"
data modify storage evercraft:cooking i3_name set value "Eel + Whisker"
function evercraft:cooking/gui/render_recipe_3_disc

# === Clear Slots 4-5 (only 4 feast platter recipes) ===
data modify entity @e[type=text_display,tag=CK.Recipe4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook4Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Recipe5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook5Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
