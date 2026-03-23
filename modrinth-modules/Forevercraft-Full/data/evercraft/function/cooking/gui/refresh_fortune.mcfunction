# ============================================================
# Refresh Fortune Category Recipes (runs as player)
# 6 recipes: 2 Hearty (2-ingr), 2 Gourmet (3-ingr), 2 Feast (3-ingr)
# ============================================================

# === Slot 0: Dream Broth (A) — Seared Rabbit + Bogmoss ===
execute store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Dream Broth"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Seared Rabbit"
data modify storage evercraft:cooking i2_name set value "Bogmoss"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 1: Dream Broth (B) — Charred Poultry + Meadow Thyme ===
execute store result score #ck_i1 ec.temp run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Dream Broth"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Charred Poultry"
data modify storage evercraft:cooking i2_name set value "Meadow Thyme"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 2: Fortune's Soup (A) — Seared Rabbit + Bogmoss + Jungle Pepper ===
execute store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Fortune's Soup"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Seared Rabbit"
data modify storage evercraft:cooking i2_name set value "Bogmoss"
data modify storage evercraft:cooking i3_name set value "Jungle Pepper"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Fortune's Soup (B) — Salted Fish + Frostmint + Meadow Thyme ===
execute store result score #ck_i1 ec.temp run clear @s cooked_cod[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s fern[custom_data~{ingredient_id:"frostmint"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Fortune's Soup"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Salted Fish"
data modify storage evercraft:cooking i2_name set value "Frostmint"
data modify storage evercraft:cooking i3_name set value "Meadow Thyme"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 4: Dreamer's Banquet (A) — Cured Mutton + Chorus Extract + Magma Salt ===
execute store result score #ck_i1 ec.temp run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "4"
data modify storage evercraft:cooking r_name set value "Dreamer's Banquet"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Cured Mutton"
data modify storage evercraft:cooking i2_name set value "Chorus Extract"
data modify storage evercraft:cooking i3_name set value "Magma Salt"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 5: Dreamer's Banquet (B) — Aged Venison + Sunbaked Root + Nethercap ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "5"
data modify storage evercraft:cooking r_name set value "Dreamer's Banquet"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Aged Venison"
data modify storage evercraft:cooking i2_name set value "Sunbaked Root"
data modify storage evercraft:cooking i3_name set value "Nethercap"
function evercraft:cooking/gui/render_recipe_3_disc
