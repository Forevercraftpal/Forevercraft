# ============================================================
# Cook Spirit Cuisine Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# Each recipe requires 1 specific spirit fish
# ============================================================

# --- Slot 0: Voidfin Steak — 1 Voidfin ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"voidfin"}] 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"voidfin"}] 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/voidfin_steak
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Voidfin Steak",color:"dark_purple","bold":true},{text:"!",color:"gray"}]

# --- Slot 1: Starscale Soup — 1 Starscale Trout ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"starscale"}] 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"starscale"}] 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/starscale_soup
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Starscale Soup",color:"#FFD700","bold":true},{text:"!",color:"gray"}]

# --- Slot 2: Eel Lightning Roll — 1 Deepcurrent Eel ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"deepcurrent"}] 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"deepcurrent"}] 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/eel_lightning_roll
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Eel Lightning Roll",color:"#4FC3F7","bold":true},{text:"!",color:"gray"}]

# --- Slot 3: Whisker Broth — 1 Leviathan's Whisker ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"leviathans_whisker"}] 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s minecraft:tropical_fish[custom_data~{spirit_fish:true,fish_type:"leviathans_whisker"}] 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/meals/whisker_broth
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You prepared ",color:"gray"},{text:"Whisker Broth",color:"#EF5350","bold":true},{text:"!",color:"gray"}]
