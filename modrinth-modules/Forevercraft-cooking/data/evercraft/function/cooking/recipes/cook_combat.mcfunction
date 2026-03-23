# ============================================================
# Cook Combat Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# Verifies, clears ingredients, and gives meal
# ============================================================

# --- Slot 0: Warrior's Stew (A) — Aged Venison + W. Truffle ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/warriors_stew_a
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Warrior's Stew",color:"white"},{text:"!",color:"gray"}]

# --- Slot 1: Warrior's Stew (B) — Smoked Boar + Sunbaked Root ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/warriors_stew_b
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Warrior's Stew",color:"white"},{text:"!",color:"gray"}]

# --- Slot 2: Battle Roast (A) — Aged Venison + W. Truffle + Meadow Thyme ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/battle_roast_a
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Battle Roast",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 3: Battle Roast (B) — Cured Mutton + Bogmoss + Highland Sage ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/battle_roast_b
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Battle Roast",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 4: Conqueror's Feast (A) — Smoked Boar + Cavern Lichen + Magma Salt ---
execute if score #ck_slot ec.temp matches 4 store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i2 ec.temp run clear @s glow_berries[custom_data~{ingredient_id:"cavern_lichen"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i3 ec.temp run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s glow_berries[custom_data~{ingredient_id:"cavern_lichen"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/conquerors_feast_a
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Conqueror's Feast",color:"dark_purple"},{text:"!",color:"gray"}]

# --- Slot 5: Conqueror's Feast (B) — Seared Rabbit + W. Truffle + Nethercap ---
execute if score #ck_slot ec.temp matches 5 store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_slot ec.temp matches 5 store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_slot ec.temp matches 5 store result score #ck_i3 ec.temp run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/conquerors_feast_b
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Conqueror's Feast",color:"dark_purple"},{text:"!",color:"gray"}]
