# ============================================================
# Refresh Spirit Cuisine Category Recipes (runs as player)
# 4 recipes: Voidfin Steak, Starscale Soup, Eel Lightning Roll, Whisker Broth
# Each requires 1 specific spirit fish
# ============================================================

# === Slot 0: Voidfin Steak — 1 Voidfin ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"voidfin"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
data modify storage evercraft:cooking i2_color set value "gray"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Voidfin Steak"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Voidfin"
data modify storage evercraft:cooking i2_name set value "+2.0 DR (10m)"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 1: Starscale Soup — 1 Starscale Trout ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"starscale"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
data modify storage evercraft:cooking i2_color set value "gray"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Starscale Soup"
data modify storage evercraft:cooking r_tier_color set value "#FFD700"
data modify storage evercraft:cooking i1_name set value "Starscale Trout"
data modify storage evercraft:cooking i2_name set value "Str+Spd+Hst+Res"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 2: Eel Lightning Roll — 1 Deepcurrent Eel ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"deepcurrent"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
data modify storage evercraft:cooking i2_color set value "gray"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Eel Lightning Roll"
data modify storage evercraft:cooking r_tier_color set value "#4FC3F7"
data modify storage evercraft:cooking i1_name set value "Deepcurrent Eel"
data modify storage evercraft:cooking i2_name set value "Spd3+Jmp3+Fall"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 3: Whisker Broth — 1 Leviathan's Whisker ===
execute store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"leviathans_whisker"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
data modify storage evercraft:cooking i2_color set value "gray"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Whisker Broth"
data modify storage evercraft:cooking r_tier_color set value "#EF5350"
data modify storage evercraft:cooking i1_name set value "Leviathan's Whisker"
data modify storage evercraft:cooking i2_name set value "Reg4+Abs4+Res2"
function evercraft:cooking/gui/render_recipe_2_disc

# === Clear Slots 4-5 (only 4 spirit recipes) ===
data modify entity @e[type=text_display,tag=CK.Recipe4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook4Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Recipe5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook5Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
