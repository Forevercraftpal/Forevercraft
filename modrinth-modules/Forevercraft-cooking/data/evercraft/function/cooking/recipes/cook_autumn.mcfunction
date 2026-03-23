# ============================================================
# Cook Autumn Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# Vanilla ingredients — no custom_data needed
# ============================================================

# --- Slot 0: Harvest Pie — Pumpkin + Wheat + Sugar ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s pumpkin 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s wheat 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i3 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s pumpkin 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s wheat 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/harvest_pie
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Harvest Pie",color:"gold"},{text:"!",color:"gray"}]

# --- Slot 1: Spiced Cider — Apple + Sugar + Blaze Powder ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s apple 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i3 ec.temp run clear @s blaze_powder 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s apple 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s blaze_powder 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/spiced_cider
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Spiced Cider",color:"gold"},{text:"!",color:"gray"}]

# --- Slot 2: Mushroom Stew Supreme — Red Mushroom + Brown Mushroom + Cooked Rabbit ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s red_mushroom 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s brown_mushroom 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s cooked_rabbit 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s red_mushroom 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s brown_mushroom 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_rabbit 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/mushroom_stew_supreme
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Mushroom Stew Supreme",color:"gold"},{text:"!",color:"gray"}]

# --- Slot 3: Caramel Apple — Apple + Sugar + Honey Bottle ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s apple 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s honey_bottle 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s apple 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s honey_bottle 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/caramel_apple
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Caramel Apple",color:"gold"},{text:"!",color:"gray"}]
