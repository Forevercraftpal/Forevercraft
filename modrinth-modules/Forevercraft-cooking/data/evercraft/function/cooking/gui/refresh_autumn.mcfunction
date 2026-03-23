# ============================================================
# Refresh Autumn Seasonal Recipes (runs as player)
# 4 recipes using vanilla ingredients
# ============================================================

# === Slot 0: Harvest Pie — Pumpkin + Wheat + Sugar ===
execute store result score #ck_i1 ec.temp run clear @s pumpkin 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s wheat 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s sugar 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Harvest Pie"
data modify storage evercraft:cooking r_tier_color set value "gold"
data modify storage evercraft:cooking i1_name set value "Pumpkin"
data modify storage evercraft:cooking i2_name set value "Wheat"
data modify storage evercraft:cooking i3_name set value "Sugar"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 1: Spiced Cider — Apple + Sugar + Blaze Powder ===
execute store result score #ck_i1 ec.temp run clear @s apple 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s blaze_powder 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Spiced Cider"
data modify storage evercraft:cooking r_tier_color set value "gold"
data modify storage evercraft:cooking i1_name set value "Apple"
data modify storage evercraft:cooking i2_name set value "Sugar"
data modify storage evercraft:cooking i3_name set value "Blaze Powder"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Mushroom Stew Supreme — Red Mushroom + Brown Mushroom + Cooked Rabbit ===
execute store result score #ck_i1 ec.temp run clear @s red_mushroom 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s brown_mushroom 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s cooked_rabbit 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Mushroom Stew Supreme"
data modify storage evercraft:cooking r_tier_color set value "gold"
data modify storage evercraft:cooking i1_name set value "Red Mushroom"
data modify storage evercraft:cooking i2_name set value "Brown Mushroom"
data modify storage evercraft:cooking i3_name set value "Cooked Rabbit"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Caramel Apple — Apple + Sugar + Honey Bottle ===
execute store result score #ck_i1 ec.temp run clear @s apple 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s honey_bottle 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Caramel Apple"
data modify storage evercraft:cooking r_tier_color set value "gold"
data modify storage evercraft:cooking i1_name set value "Apple"
data modify storage evercraft:cooking i2_name set value "Sugar"
data modify storage evercraft:cooking i3_name set value "Honey Bottle"
function evercraft:cooking/gui/render_recipe_3_disc
