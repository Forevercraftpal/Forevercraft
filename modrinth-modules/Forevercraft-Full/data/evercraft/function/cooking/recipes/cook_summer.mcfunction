# ============================================================
# Cook Summer Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# Vanilla ingredients — no custom_data needed
# ============================================================

# --- Slot 0: Chilled Melon Drink — Melon Slice + Snowball + Sugar ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s melon_slice 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s snowball 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i3 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s melon_slice 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s snowball 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/chilled_melon_drink
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Chilled Melon Drink",color:"yellow"},{text:"!",color:"gray"}]

# --- Slot 1: Grilled Fish Platter — Cooked Cod + Cooked Salmon + Blaze Powder ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_cod 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s cooked_salmon 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i3 ec.temp run clear @s blaze_powder 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_cod 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_salmon 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s blaze_powder 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/grilled_fish_platter
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Grilled Fish Platter",color:"yellow"},{text:"!",color:"gray"}]

# --- Slot 2: Tropical Smoothie — Chorus Fruit + Melon Slice + Glow Berries ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s chorus_fruit 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s melon_slice 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s glow_berries 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s chorus_fruit 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s melon_slice 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s glow_berries 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/tropical_smoothie
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Tropical Smoothie",color:"yellow"},{text:"!",color:"gray"}]

# --- Slot 3: Sun-Dried Jerky — Cooked Beef + Blaze Powder + Sugar ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s cooked_beef 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s blaze_powder 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s blaze_powder 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/sun_dried_jerky
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Sun-Dried Jerky",color:"yellow"},{text:"!",color:"gray"}]
