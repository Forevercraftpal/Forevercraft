# ============================================================
# Cook Delicacy Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# ============================================================

# --- Slot 0: Saturation Stew — Charred Poultry + Sunbaked Root ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_chicken[custom_data~{ingredient_id:"charred_poultry"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s beetroot[custom_data~{ingredient_id:"sunbaked_root"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/saturation_stew
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Saturation Stew",color:"white"},{text:"!",color:"gray"}]

# --- Slot 1: Exquisite Nectar — Seared Rabbit + Desert Saffron + Jungle Pepper ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i3 ec.temp run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_rabbit[custom_data~{ingredient_id:"seared_rabbit"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s orange_tulip[custom_data~{ingredient_id:"desert_saffron"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cocoa_beans[custom_data~{ingredient_id:"jungle_pepper"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/exquisite_nectar
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Exquisite Nectar",color:"blue"},{text:"!",color:"gray"}]

# --- Slot 2: Ambrosia — Aged Venison + Chorus Extract + Nethercap ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef[custom_data~{ingredient_id:"aged_venison"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s chorus_fruit[custom_data~{ingredient_id:"chorus_extract"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s nether_wart[custom_data~{ingredient_id:"nethercap"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/ambrosia
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Ambrosia",color:"dark_purple"},{text:"!",color:"gray"}]

# --- Slots 3-5: No recipes in delicacy tab ---
