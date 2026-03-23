# ============================================================
# Refresh Summer Seasonal Recipes (runs as player)
# 4 recipes using vanilla ingredients
# ============================================================

# === Slot 0: Chilled Melon Drink — Melon Slice + Snowball + Sugar ===
execute store result score #ck_i1 ec.temp run clear @s melon_slice 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s snowball 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s sugar 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "0"
data modify storage evercraft:cooking r_name set value "Chilled Melon Drink"
data modify storage evercraft:cooking r_tier_color set value "yellow"
data modify storage evercraft:cooking i1_name set value "Melon Slice"
data modify storage evercraft:cooking i2_name set value "Snowball"
data modify storage evercraft:cooking i3_name set value "Sugar"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 1: Grilled Fish Platter — Cooked Cod + Cooked Salmon + Blaze Powder ===
execute store result score #ck_i1 ec.temp run clear @s cooked_cod 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s cooked_salmon 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s blaze_powder 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "1"
data modify storage evercraft:cooking r_name set value "Grilled Fish Platter"
data modify storage evercraft:cooking r_tier_color set value "yellow"
data modify storage evercraft:cooking i1_name set value "Cooked Cod"
data modify storage evercraft:cooking i2_name set value "Cooked Salmon"
data modify storage evercraft:cooking i3_name set value "Blaze Powder"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 2: Tropical Smoothie — Chorus Fruit + Melon Slice + Glow Berries ===
execute store result score #ck_i1 ec.temp run clear @s chorus_fruit 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s melon_slice 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s glow_berries 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "2"
data modify storage evercraft:cooking r_name set value "Tropical Smoothie"
data modify storage evercraft:cooking r_tier_color set value "yellow"
data modify storage evercraft:cooking i1_name set value "Chorus Fruit"
data modify storage evercraft:cooking i2_name set value "Melon Slice"
data modify storage evercraft:cooking i3_name set value "Glow Berries"
function evercraft:cooking/gui/render_recipe_3_disc

# === Slot 3: Sun-Dried Jerky — Cooked Beef + Blaze Powder + Sugar ===
execute store result score #ck_i1 ec.temp run clear @s cooked_beef 0
execute if score #ck_i1 ec.temp matches 1.. run data modify storage evercraft:cooking i1_color set value "green"
execute if score #ck_i1 ec.temp matches 0 run data modify storage evercraft:cooking i1_color set value "red"
execute store result score #ck_i2 ec.temp run clear @s blaze_powder 0
execute if score #ck_i2 ec.temp matches 1.. run data modify storage evercraft:cooking i2_color set value "green"
execute if score #ck_i2 ec.temp matches 0 run data modify storage evercraft:cooking i2_color set value "red"
execute store result score #ck_i3 ec.temp run clear @s sugar 0
execute if score #ck_i3 ec.temp matches 1.. run data modify storage evercraft:cooking i3_color set value "green"
execute if score #ck_i3 ec.temp matches 0 run data modify storage evercraft:cooking i3_color set value "red"
data modify storage evercraft:cooking r_slot set value "3"
data modify storage evercraft:cooking r_name set value "Sun-Dried Jerky"
data modify storage evercraft:cooking r_tier_color set value "yellow"
data modify storage evercraft:cooking i1_name set value "Cooked Beef"
data modify storage evercraft:cooking i2_name set value "Blaze Powder"
data modify storage evercraft:cooking i3_name set value "Sugar"
function evercraft:cooking/gui/render_recipe_3_disc
