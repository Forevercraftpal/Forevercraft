# ============================================================
# Refresh Delicacy Category Recipes (runs as player)
# 3 recipes: 1 Hearty (2-ingr), 1 Gourmet (3-ingr), 1 Feast (3-ingr)
# Slots 3-5 empty
# ============================================================

# === Slot 0: Saturation Stew — Charred Poultry + Sunbaked Root ===
execute store result score #ck_i1 ec.temp run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Saturation Stew"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "C. Poultry"
data modify storage evercraft:cooking i2_name set value "Sunbaked Root"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 1: Exquisite Nectar — Seared Rabbit + Desert Saffron + Jungle Pepper ===
execute store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Exquisite Nectar"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Seared Rabbit"
data modify storage evercraft:cooking i2_name set value "Desert Saffron"
data modify storage evercraft:cooking i3_name set value "Jungle Pepper"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Ambrosia — Aged Venison + Chorus Extract + Nethercap ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Ambrosia"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Aged Venison"
data modify storage evercraft:cooking i2_name set value "Chorus Extract"
data modify storage evercraft:cooking i3_name set value "Nethercap"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slots 3-5: Empty ===
data modify entity @e[type=text_display,tag=CK.Recipe3,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr3,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook3Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Recipe4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr4,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook4Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Recipe5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Ingr5,distance=..5,limit=1] text set value {"text":"","color":"gray"}
data modify entity @e[type=text_display,tag=CK.Cook5Text,distance=..5,limit=1] text set value {"text":"","color":"gray"}
