# ============================================================
# Refresh Treats Category Recipes (runs as player)
# 5 companion treat recipes + 1 info slot
# Treats give Companion Treats with varying bond RP values
# ============================================================

# === Slot 0: Companion Treat — Bone + Sweet Berries (75 RP) ===
execute store result score #ck_i1 ec.temp run clear @s bone 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s sweet_berries 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Companion Treat"
data modify storage evercraft:cooking r_tier_color set value "white"
data modify storage evercraft:cooking i1_name set value "Bone"
data modify storage evercraft:cooking i2_name set value "Sweet Berries"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 1: Meadow Biscuit — Aged Venison + Meadow Thyme (100 RP) ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Meadow Biscuit"
data modify storage evercraft:cooking r_tier_color set value "green"
data modify storage evercraft:cooking i1_name set value "Aged Venison"
data modify storage evercraft:cooking i2_name set value "Meadow Thyme"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 2: Honey Cake — W. Honeycomb + Sunbaked Root (150 RP) ===
execute store result score #ck_i1 ec.temp run clear @s honeycomb[custom_data~{ingredient_id:"wild_honeycomb"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Honey Cake"
data modify storage evercraft:cooking r_tier_color set value "yellow"
data modify storage evercraft:cooking i1_name set value "W. Honeycomb"
data modify storage evercraft:cooking i2_name set value "Sunbaked Root"
function evercraft:cooking/gui/render_recipe_2_disc

# === Slot 3: Savory Bone Broth — Smoked Boar + W. Truffle + Bone (200 RP) ===
execute store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s bone 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Savory Bone Broth"
data modify storage evercraft:cooking r_tier_color set value "aqua"
data modify storage evercraft:cooking i1_name set value "Smoked Boar"
data modify storage evercraft:cooking i2_name set value "W. Truffle"
data modify storage evercraft:cooking i3_name set value "Bone"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 4: Golden Morsel — Golden Root + Highland Sage + Diamond (300 RP) ===
execute store result score #ck_i1 ec.temp run clear @s golden_carrot[custom_data~{ingredient_id:"golden_root"}] 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s diamond 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "4"
data modify storage evercraft:cooking r_name set value "Golden Morsel"
data modify storage evercraft:cooking r_tier_color set value "gold"
data modify storage evercraft:cooking i1_name set value "Golden Root"
data modify storage evercraft:cooking i2_name set value "Highland Sage"
data modify storage evercraft:cooking i3_name set value "Diamond"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 5: Spirit Treat — Nether Star + Ench. Golden Apple (Evolution) ===
execute store result score #ck_i1 ec.temp run clear @s nether_star 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s enchanted_golden_apple 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
data modify storage evercraft:cooking r_slot set value "5"
data modify storage evercraft:cooking r_name set value "\u2726 Spirit Treat"
data modify storage evercraft:cooking r_tier_color set value "light_purple"
data modify storage evercraft:cooking i1_name set value "Nether Star"
data modify storage evercraft:cooking i2_name set value "Ench. Golden Apple"
function evercraft:cooking/gui/render_recipe_2_disc
