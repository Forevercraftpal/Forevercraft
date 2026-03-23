# ============================================================
# Cook Laborer Ration Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# Verifies, clears ingredients, and gives meal
# ============================================================

# --- Slot 0: Trail Rations — 2 Bread + 1 Aged Venison ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s minecraft:bread 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:bread 2
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/trail_rations
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Trail Rations",color:"white"},{text:"!",color:"gray"}]

# --- Slot 1: Packed Lunch — 2 Smoked Boar + 1 Baked Potato + 1 Carrot ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s minecraft:baked_potato 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i3 ec.temp run clear @s minecraft:carrot 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 2
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:baked_potato 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:carrot 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/packed_lunch
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Packed Lunch",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 2: Expedition Feast — 1 Golden Apple + 2 Aged Venison + 1 Cake ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s minecraft:golden_apple 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s minecraft:cake 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:golden_apple 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 2
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:cake 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/expedition_feast
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Expedition Feast",color:"dark_purple"},{text:"!",color:"gray"}]

# --- Slot 3: Master's Provisions — 1 Golden Carrot + 1 Aged Venison + 1 Salted Fish + seasonal ---
# Seasonal ingredient varies: Spring=Sweet Berry, Summer=Melon Slice, Autumn=Pumpkin Pie, Winter=Dried Kelp
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s minecraft:golden_carrot 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s cooked_salmon[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
# Check seasonal ingredient (4th ingredient)
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 if score #season_id ec.var matches 2 store result score #ck_i1 ec.temp run clear @s minecraft:sweet_berries 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 if score #season_id ec.var matches 3 store result score #ck_i1 ec.temp run clear @s minecraft:melon_slice 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 if score #season_id ec.var matches 0 store result score #ck_i1 ec.temp run clear @s minecraft:pumpkin_pie 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 if score #season_id ec.var matches 1 store result score #ck_i1 ec.temp run clear @s minecraft:dried_kelp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
# Clear all ingredients
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:golden_carrot 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_salmon[custom_data~{ingredient_id:"salted_fish"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] if score #season_id ec.var matches 2 run clear @s minecraft:sweet_berries 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] if score #season_id ec.var matches 3 run clear @s minecraft:melon_slice 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] if score #season_id ec.var matches 0 run clear @s minecraft:pumpkin_pie 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] if score #season_id ec.var matches 1 run clear @s minecraft:dried_kelp 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/masters_provisions
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Master's Provisions",color:"#FFD700"},{text:"!",color:"gray"}]
