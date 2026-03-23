# ============================================================
# Refresh Preservation Category Recipes (runs as player)
# 3 recipes: Ironbark Bread, Deathless Stew, Spirit Jerky
# ============================================================

# === Slot 0: Ironbark Bread — 3 Wheat + 1 Iron Ingot + 1 Diamond ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:wheat 0
execute if score #ck_i1 ec.temp matches 3.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches ..2 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s minecraft:iron_ingot 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:diamond 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Ironbark Bread"
data modify storage evercraft:cooking r_tier_color set value "#78909C"
data modify storage evercraft:cooking i1_name set value "Wheat x3"
data modify storage evercraft:cooking i2_name set value "Iron Ingot"
data modify storage evercraft:cooking i3_name set value "Diamond"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 1: Deathless Stew — 1 Mushroom Stew + 1 Enchanted Golden Apple + 1 Golden Apple ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:mushroom_stew 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s minecraft:enchanted_golden_apple 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s minecraft:golden_apple 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Deathless Stew"
data modify storage evercraft:cooking r_tier_color set value "#EF5350"
data modify storage evercraft:cooking i1_name set value "Mushroom Stew"
data modify storage evercraft:cooking i2_name set value "Ench. Golden Apple"
data modify storage evercraft:cooking i3_name set value "Golden Apple"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Spirit Jerky — 1 Aged Venison + 1 Nether Star ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s minecraft:nether_star 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Spirit Jerky"
data modify storage evercraft:cooking r_tier_color set value "light_purple"
data modify storage evercraft:cooking i1_name set value "Aged Venison"
data modify storage evercraft:cooking i2_name set value "Nether Star"
function evercraft:cooking/gui/render_recipe_2_disc

# === Clear Slots 3-5 (only 3 preservation recipes) ===
data modify entity @e[type=text_display,tag=CK.Recipe3,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook3Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr3,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Recipe4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook4Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Recipe5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook5Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
