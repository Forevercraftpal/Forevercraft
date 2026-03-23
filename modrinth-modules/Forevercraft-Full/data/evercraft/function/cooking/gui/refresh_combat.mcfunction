# ============================================================
# Refresh Combat Category Recipes (runs as player)
# 6 recipes: 2 Hearty (2-ingr), 2 Gourmet (3-ingr), 2 Feast (3-ingr)
# ============================================================

# === Slot 0: Warrior's Stew (A) — Aged Venison + W. Truffle ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Warrior's Stew"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Aged Venison"
data modify storage evercraft:cooking i2_name set value "W. Truffle"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 1: Warrior's Stew (B) — Smoked Boar + Sunbaked Root ===
execute store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Warrior's Stew"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Smoked Boar"
data modify storage evercraft:cooking i2_name set value "Sunbaked Root"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 2: Battle Roast (A) — Aged Venison + W. Truffle + Meadow Thyme ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Battle Roast"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Aged Venison"
data modify storage evercraft:cooking i2_name set value "W. Truffle"
data modify storage evercraft:cooking i3_name set value "Meadow Thyme"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Battle Roast (B) — Cured Mutton + Bogmoss + Highland Sage ===
execute store result score #ck_i1 ec.temp run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Battle Roast"
data modify storage evercraft:cooking r_tier_color set value "blue"
data modify storage evercraft:cooking i1_name set value "Cured Mutton"
data modify storage evercraft:cooking i2_name set value "Bogmoss"
data modify storage evercraft:cooking i3_name set value "Highland Sage"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 4: Conqueror's Feast (A) — Smoked Boar + Cavern Lichen + Magma Salt ===
execute store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s glow_berries[custom_data~{ingredient_id:"cavern_lichen"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "4"
data modify storage evercraft:cooking r_name set value "Conqueror's Feast"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Smoked Boar"
data modify storage evercraft:cooking i2_name set value "Cavern Lichen"
data modify storage evercraft:cooking i3_name set value "Magma Salt"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 5: Conqueror's Feast (B) — Seared Rabbit + W. Truffle + Nethercap ===
execute store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "5"
data modify storage evercraft:cooking r_name set value "Conqueror's Feast"
data modify storage evercraft:cooking r_tier_color set value "dark_purple"
data modify storage evercraft:cooking i1_name set value "Seared Rabbit"
data modify storage evercraft:cooking i2_name set value "W. Truffle"
data modify storage evercraft:cooking i3_name set value "Nethercap"
function evercraft:cooking/gui/render_recipe_3_disc
