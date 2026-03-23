# ============================================================
# Cook Treats Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# Verifies, clears ingredients, and gives companion treat
# ============================================================

# --- Slot 0: Companion Treat — Bone + Sweet Berries ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s bone 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s sweet_berries 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s bone 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sweet_berries 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:companions/items/companion_treat
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You made a ",color:"gray"},{text:"Companion Treat",color:"white"},{text:"!",color:"gray"}]

# --- Slot 1: Meadow Biscuit — Aged Venison + Meadow Thyme ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/treats/meadow_biscuit
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You made a ",color:"gray"},{text:"Meadow Biscuit",color:"green"},{text:"!",color:"gray"}]

# --- Slot 2: Honey Cake — W. Honeycomb + Sunbaked Root ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s honeycomb[custom_data~{ingredient_id:"wild_honeycomb"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s honeycomb[custom_data~{ingredient_id:"wild_honeycomb"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/treats/honey_cake
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You made a ",color:"gray"},{text:"Honey Cake",color:"yellow"},{text:"!",color:"gray"}]

# --- Slot 3: Savory Bone Broth — Smoked Boar + W. Truffle + Bone ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s bone 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s brown_mushroom[custom_data~{ingredient_id:"woodland_truffle"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s bone 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/treats/savory_bone_broth
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You made ",color:"gray"},{text:"Savory Bone Broth",color:"aqua"},{text:"!",color:"gray"}]

# --- Slot 4: Golden Morsel — Golden Root + Highland Sage + Diamond ---
execute if score #ck_slot ec.temp matches 4 store result score #ck_i1 ec.temp run clear @s golden_carrot[custom_data~{ingredient_id:"golden_root"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i2 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i3 ec.temp run clear @s diamond 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s golden_carrot[custom_data~{ingredient_id:"golden_root"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s diamond 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/treats/golden_morsel
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You made a ",color:"gray"},{text:"Golden Morsel",color:"gold"},{text:"!",color:"gray"}]

# --- Slot 5: Spirit Treat — Nether Star + Enchanted Golden Apple ---
execute if score #ck_slot ec.temp matches 5 store result score #ck_i1 ec.temp run clear @s nether_star 0
execute if score #ck_slot ec.temp matches 5 store result score #ck_i2 ec.temp run clear @s enchanted_golden_apple 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s nether_star 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s enchanted_golden_apple 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/treats/spirit_treat
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You crafted a ",color:"gray"},{text:"\u2726 Spirit Treat \u2726",color:"light_purple"},{text:"!",color:"gray"}]
