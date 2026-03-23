# ============================================================
# Cook Fortune Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# ============================================================

# --- Slot 0: Dream Broth (A) — Seared Rabbit + Bogmoss ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/lucky_broth_a
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Dream Broth",color:"white"},{text:"!",color:"gray"}]

# --- Slot 1: Dream Broth (B) — Charred Poultry + Meadow Thyme ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/lucky_broth_b
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Dream Broth",color:"white"},{text:"!",color:"gray"}]

# --- Slot 2: Fortune's Soup (A) — Seared Rabbit + Bogmoss + Jungle Pepper ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s lily_pad[custom_data~{ingredient_id:"bogmoss"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/fortunes_soup_a
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Fortune's Soup",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 3: Fortune's Soup (B) — Salted Fish + Frostmint + Meadow Thyme ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s cooked_cod[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s fern[custom_data~{ingredient_id:"frostmint"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_cod[custom_data~{ingredient_id:"salted_fish"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s fern[custom_data~{ingredient_id:"frostmint"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s short_grass[custom_data~{ingredient_id:"meadow_thyme"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/fortunes_soup_b
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Fortune's Soup",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 4: Dreamer's Banquet (A) — Cured Mutton + Chorus Extract + Magma Salt ---
execute if score #ck_slot ec.temp matches 4 store result score #ck_i1 ec.temp run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i2 ec.temp run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 0
execute if score #ck_slot ec.temp matches 4 store result score #ck_i3 ec.temp run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_mutton[custom_data~{ingredient_id:"cured_mutton"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s magma_cream[custom_data~{ingredient_id:"magma_salt"}] 1
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/dreamers_banquet_a
execute if score #ck_slot ec.temp matches 4 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Dreamer's Banquet",color:"dark_purple"},{text:"!",color:"gray"}]

# --- Slot 5: Dreamer's Banquet (B) — Aged Venison + Sunbaked Root + Nethercap ---
execute if score #ck_slot ec.temp matches 5 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 5 store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_slot ec.temp matches 5 store result score #ck_i3 ec.temp run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 1
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/dreamers_banquet_b
execute if score #ck_slot ec.temp matches 5 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Dreamer's Banquet",color:"dark_purple"},{text:"!",color:"gray"}]
