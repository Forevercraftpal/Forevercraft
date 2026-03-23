# ============================================================
# Cook Preservation Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# ============================================================

# --- Slot 0: Ironbark Bread — 3 Wheat + 1 Iron Ingot + 1 Diamond ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s minecraft:wheat 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s minecraft:iron_ingot 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i3 ec.temp run clear @s minecraft:diamond 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches ..2 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:wheat 3
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:iron_ingot 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:diamond 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/ironbark_bread
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You forged ",color:"gray"},{text:"Ironbark Bread",color:"#78909C"},{text:"!",color:"gray"}]

# --- Slot 1: Deathless Stew — 1 Mushroom Stew + 1 Enchanted Golden Apple + 1 Golden Apple ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s minecraft:mushroom_stew 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s minecraft:enchanted_golden_apple 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i3 ec.temp run clear @s minecraft:golden_apple 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:mushroom_stew 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:enchanted_golden_apple 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:golden_apple 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/deathless_stew
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You brewed ",color:"gray"},{text:"Deathless Stew",color:"#EF5350"},{text:"!",color:"gray"}]

# --- Slot 2: Spirit Jerky — 1 Aged Venison + 1 Nether Star ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s minecraft:nether_star 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:nether_star 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/spirit_jerky
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Spirit Jerky",color:"light_purple"},{text:"!",color:"gray"}]
