# ============================================================
# Refresh Winter Seasonal Recipes (runs as player)
# 4 recipes using vanilla ingredients
# ============================================================

# === Slot 0: Hot Cocoa — Cocoa Beans + Sugar + Cookie ===
execute store result score #ck_i1 ec.temp run clear @s cocoa_beans 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s cookie 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Hot Cocoa"
data modify storage evercraft:cooking r_tier_color set value "aqua"
data modify storage evercraft:cooking i1_name set value "Cocoa Beans"
data modify storage evercraft:cooking i2_name set value "Sugar"
data modify storage evercraft:cooking i3_name set value "Cookie"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 1: Hearty Stew — Cooked Beef + Potato + Carrot ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s potato 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s carrot 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Hearty Stew"
data modify storage evercraft:cooking r_tier_color set value "aqua"
data modify storage evercraft:cooking i1_name set value "Cooked Beef"
data modify storage evercraft:cooking i2_name set value "Potato"
data modify storage evercraft:cooking i3_name set value "Carrot"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Frosted Cake — Sugar + Wheat + Snowball ===
execute store result score #ck_i1 ec.temp run clear @s sugar 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s wheat 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s snowball 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Frosted Cake"
data modify storage evercraft:cooking r_tier_color set value "aqua"
data modify storage evercraft:cooking i1_name set value "Sugar"
data modify storage evercraft:cooking i2_name set value "Wheat"
data modify storage evercraft:cooking i3_name set value "Snowball"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Gingerbread — Wheat + Sugar + Honey Bottle ===
execute store result score #ck_i1 ec.temp run clear @s wheat 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s honey_bottle 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Gingerbread"
data modify storage evercraft:cooking r_tier_color set value "aqua"
data modify storage evercraft:cooking i1_name set value "Wheat"
data modify storage evercraft:cooking i2_name set value "Sugar"
data modify storage evercraft:cooking i3_name set value "Honey Bottle"
function evercraft:cooking/gui/render_recipe_3_disc
