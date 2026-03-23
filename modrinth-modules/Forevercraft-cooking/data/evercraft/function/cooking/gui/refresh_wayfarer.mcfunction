# ============================================================
# Refresh Wayfarer Category Recipes (runs as player)
# 6 recipes: 2 Hearty (2-ingr), 2 Gourmet (3-ingr), 2 Feast (3-ingr)
# ============================================================

# === Slot 0: Traveler's Ration (A) — Cured Mutton + Sunbaked Root ===
execute store result score #ck_i1 ec.temp run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Traveler's Ration"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Cured Mutton"
data modify storage evercraft:cooking i2_name set value "Sunbaked Root"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 1: Traveler's Ration (B) — Aged Venison + Desert Saffron ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Traveler's Ration"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Aged Venison"
data modify storage evercraft:cooking i2_name set value "Desert Saffron"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 2: Pathfinder's Pie (A) — Smoked Boar + Highland Sage + Jungle Pepper ===
execute store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Pathfinder's Pie"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Smoked Boar"
data modify storage evercraft:cooking i2_name set value "Highland Sage"
data modify storage evercraft:cooking i3_name set value "Jungle Pepper"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Pathfinder's Pie (B) — Charred Poultry + Cavern Lichen + Frostmint ===
execute store result score #ck_i1 ec.temp run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s glow_berries[custom_data~{ingredient_id:"cavern_lichen"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s fern[custom_data~{ingredient_id:"frostmint"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Pathfinder's Pie"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Charred Poultry"
data modify storage evercraft:cooking i2_name set value "Cavern Lichen"
data modify storage evercraft:cooking i3_name set value "Frostmint"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 4: Windstrider's Feast (A) — Seared Rabbit + Highland Sage + Chorus Extract ===
execute store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "4"
data modify storage evercraft:cooking r_name set value "Windstrider's Feast"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Seared Rabbit"
data modify storage evercraft:cooking i2_name set value "Highland Sage"
data modify storage evercraft:cooking i3_name set value "Chorus Extract"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 5: Windstrider's Feast (B) — Salted Fish + Desert Saffron + Magma Salt ===
execute store result score #ck_i1 ec.temp run clear @s cooked_cod[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "5"
data modify storage evercraft:cooking r_name set value "Windstrider's Feast"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Salted Fish"
data modify storage evercraft:cooking i2_name set value "Desert Saffron"
data modify storage evercraft:cooking i3_name set value "Magma Salt"
function evercraft:cooking/gui/render_recipe_3_disc
