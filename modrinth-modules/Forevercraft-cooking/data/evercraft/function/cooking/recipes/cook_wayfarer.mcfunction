# ============================================================
# Cook Wayfarer Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# ============================================================

# --- Slot 0: Traveler's Ration (A) — Cured Mutton + Sunbaked Root ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/travelers_ration_a
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Traveler's Ration",color:"white"},{text:"!",color:"gray"}]

# --- Slot 1: Traveler's Ration (B) — Aged Venison + Desert Saffron ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/travelers_ration_b
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Traveler's Ration",color:"white"},{text:"!",color:"gray"}]

# --- Slot 2: Pathfinder's Pie (A) — Smoked Boar + Highland Sage + Jungle Pepper ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/pathfinders_pie_a
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Pathfinder's Pie",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 3: Pathfinder's Pie (B) — Charred Poultry + Cavern Lichen + Frostmint ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s glow_berries[custom_data~{ingredient_id:"cavern_lichen"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s fern[custom_data~{ingredient_id:"frostmint"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s glow_berries[custom_data~{ingredient_id:"cavern_lichen"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s fern[custom_data~{ingredient_id:"frostmint"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/pathfinders_pie_b
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Pathfinder's Pie",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 4: Windstrider's Feast (A) — Seared Rabbit + Highland Sage + Chorus Extract ---
execute if score #ck_slot ec.temp matches 4 store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i2 ec.temp run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i3 ec.temp run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s dead_bush[custom_data~{ingredient_id:"highland_sage"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/windstriders_feast_a
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Windstrider's Feast",color:"dark_purple"},{text:"!",color:"gray"}]

# --- Slot 5: Windstrider's Feast (B) — Salted Fish + Desert Saffron + Magma Salt ---
execute if score #ck_slot ec.temp matches 5 store result score #ck_i1 ec.temp run clear @s cooked_cod[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_slot ec.temp matches 5 store result score #ck_i2 ec.temp run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 0
execute if score #ck_slot ec.temp matches 5 store result score #ck_i3 ec.temp run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_cod[custom_data~{ingredient_id:"salted_fish"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/windstriders_feast_b
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Windstrider's Feast",color:"dark_purple"},{text:"!",color:"gray"}]
