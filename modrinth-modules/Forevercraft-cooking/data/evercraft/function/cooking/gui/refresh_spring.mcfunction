# ============================================================
# Refresh Spring Seasonal Recipes (runs as player)
# 4 recipes using vanilla ingredients
# ============================================================

# === Slot 0: Flower Cake — Poppy + Sugar + Wheat ===
execute store result score #ck_i1 ec.temp run clear @s poppy 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s wheat 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Flower Cake"
data modify storage evercraft:cooking r_tier_color set value "green"
data modify storage evercraft:cooking i1_name set value "Poppy"
data modify storage evercraft:cooking i2_name set value "Sugar"
data modify storage evercraft:cooking i3_name set value "Wheat"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 1: Honeyed Salmon — Cooked Salmon + Honey Bottle + Sweet Berries ===
execute store result score #ck_i1 ec.temp run clear @s cooked_salmon 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s honey_bottle 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s sweet_berries 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Honeyed Salmon"
data modify storage evercraft:cooking r_tier_color set value "green"
data modify storage evercraft:cooking i1_name set value "Cooked Salmon"
data modify storage evercraft:cooking i2_name set value "Honey Bottle"
data modify storage evercraft:cooking i3_name set value "Sweet Berries"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Spring Salad — Carrot + Beetroot + Apple ===
execute store result score #ck_i1 ec.temp run clear @s carrot 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s beetroot 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s apple 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Spring Salad"
data modify storage evercraft:cooking r_tier_color set value "green"
data modify storage evercraft:cooking i1_name set value "Carrot"
data modify storage evercraft:cooking i2_name set value "Beetroot"
data modify storage evercraft:cooking i3_name set value "Apple"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Berry Tart — Sweet Berries + Sugar + Wheat ===
execute store result score #ck_i1 ec.temp run clear @s sweet_berries 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s wheat 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Berry Tart"
data modify storage evercraft:cooking r_tier_color set value "green"
data modify storage evercraft:cooking i1_name set value "Sweet Berries"
data modify storage evercraft:cooking i2_name set value "Sugar"
data modify storage evercraft:cooking i3_name set value "Wheat"
function evercraft:cooking/gui/render_recipe_3_disc
