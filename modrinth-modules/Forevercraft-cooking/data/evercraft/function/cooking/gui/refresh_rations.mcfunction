# ============================================================
# Refresh Laborer Rations Category Recipes (runs as player)
# 4 recipes: Trail Rations (2-ingr), Packed Lunch (4-ingr),
#            Expedition Feast (3-ingr), Master's Provisions (4-ingr)
# ============================================================

# === Slot 0: Trail Rations — 2 Bread + Aged Venison ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:bread 0
execute if score #ck_i1 ec.temp matches 2.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches ..1 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Trail Rations"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Bread x2"
data modify storage evercraft:cooking i2_name set value "Aged Venison"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 1: Packed Lunch — 2 Smoked Boar + Baked Potato + Carrot ===
execute store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_i1 ec.temp matches 2.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches ..1 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s minecraft:baked_potato 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:carrot 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Packed Lunch"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Smoked Boar x2"
data modify storage evercraft:cooking i2_name set value "Baked Potato"
data modify storage evercraft:cooking i3_name set value "Carrot"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Expedition Feast — Golden Apple + 2 Aged Venison + Cake ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:golden_apple 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i2 ec.temp matches 2.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches ..1 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:cake 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Expedition Feast"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Golden Apple"
data modify storage evercraft:cooking i2_name set value "Aged Venison x2"
data modify storage evercraft:cooking i3_name set value "Cake"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Master's Provisions — Golden Carrot + Aged Venison + Salted Fish + Seasonal ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:golden_carrot 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s cooked_salmon[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Master's Provisions"
data modify storage evercraft:cooking r_tier_color set value "#FFD700"
data modify storage evercraft:cooking i1_name set value "Golden Carrot"
data modify storage evercraft:cooking i2_name set value "Aged Venison"
data modify storage evercraft:cooking i3_name set value "Salted Fish + Seasonal"
function evercraft:cooking/gui/render_recipe_3_disc

# === Clear Slots 4-5 (only 4 ration recipes) ===
data modify entity @e[type=text_display,tag=CK.Recipe4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook4Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Recipe5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook5Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
