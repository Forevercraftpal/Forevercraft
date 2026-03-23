# ============================================================
# Cook Feast Platter Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# ============================================================

# --- Slot 0: Warrior's Banquet — 4 Aged Venison + 2 Golden Carrot + 1 Honeycomb ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s minecraft:golden_carrot 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i3 ec.temp run clear @s minecraft:honeycomb 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches ..3 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 4
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:golden_carrot 2
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:honeycomb 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/warriors_banquet
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Warrior's Banquet",color:"#FF6B6B"},{text:"!",color:"gray"}]

# --- Slot 1: Explorer's Spread — 2 Baked Potato + 2 Salted Fish + 1 Glow Berry + 1 Sweet Berry ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s minecraft:baked_potato 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s cooked_salmon[custom_data~{ingredient_id:"salted_fish"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i3 ec.temp run clear @s minecraft:glow_berries 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s minecraft:sweet_berries 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
# Re-check baked potato count (need 2)
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s minecraft:baked_potato 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:baked_potato 2
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_salmon[custom_data~{ingredient_id:"salted_fish"}] 2
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:glow_berries 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:sweet_berries 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/explorers_spread
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Explorer's Spread",color:"#4FC3F7"},{text:"!",color:"gray"}]

# --- Slot 2: Miner's Table — 2 Smoked Boar + 2 Golden Carrot + 1 Mushroom Stew + 1 Honeycomb ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s minecraft:golden_carrot 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s minecraft:mushroom_stew 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s minecraft:honeycomb 0
# Check smoked boar (need 2)
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s minecraft:golden_carrot 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches ..1 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s minecraft:mushroom_stew 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s minecraft:honeycomb 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_porkchop[custom_data~{ingredient_id:"smoked_boar"}] 2
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:golden_carrot 2
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:mushroom_stew 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:honeycomb 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/miners_table
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Miner's Table",color:"#FFB74D"},{text:"!",color:"gray"}]

# --- Slot 3: Eternal Feast — 1 each Spirit Fish (placeholder: 4 Tropical Fish for now) ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"voidfin"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"starscale"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"deepcurrent"}] 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"leviathans_whisker"}] 0
# Need all 4 spirit fish — check each
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"voidfin"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"starscale"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"deepcurrent"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"leviathans_whisker"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"voidfin"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"starscale"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"deepcurrent"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"leviathans_whisker"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/eternal_feast
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared the ",color:"gray"},{text:"Eternal Feast",color:"#FFD700","bold":true},{text:"!",color:"gray"}]
