# ============================================================
# Cook Winter Recipes — Runs as player
# #ck_slot = recipe slot, #ck_ok = set to 0 if ingredients missing
# Vanilla ingredients — no custom_data needed
# ============================================================

# --- Slot 0: Hot Cocoa — Cocoa Beans + Sugar + Cookie ---
execute if score #ck_slot ec.temp matches 0 store result score #ck_i1 ec.temp run clear @s cocoa_beans 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 0 store result score #ck_i3 ec.temp run clear @s cookie 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cocoa_beans 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cookie 1
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/hot_cocoa
execute if score #ck_slot ec.temp matches 0 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Hot Cocoa",color:"aqua"},{text:"!",color:"gray"}]

# --- Slot 1: Hearty Stew — Cooked Beef + Potato + Carrot ---
execute if score #ck_slot ec.temp matches 1 store result score #ck_i1 ec.temp run clear @s cooked_beef 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i2 ec.temp run clear @s potato 0
execute if score #ck_slot ec.temp matches 1 store result score #ck_i3 ec.temp run clear @s carrot 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s cooked_beef 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s potato 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s carrot 1
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/hearty_stew
execute if score #ck_slot ec.temp matches 1 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Hearty Stew",color:"aqua"},{text:"!",color:"gray"}]

# --- Slot 2: Frosted Cake — Sugar + Wheat + Snowball ---
execute if score #ck_slot ec.temp matches 2 store result score #ck_i1 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i2 ec.temp run clear @s wheat 0
execute if score #ck_slot ec.temp matches 2 store result score #ck_i3 ec.temp run clear @s snowball 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s wheat 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s snowball 1
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/frosted_cake
execute if score #ck_slot ec.temp matches 2 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Frosted Cake",color:"aqua"},{text:"!",color:"gray"}]

# --- Slot 3: Gingerbread — Wheat + Sugar + Honey Bottle ---
execute if score #ck_slot ec.temp matches 3 store result score #ck_i1 ec.temp run clear @s wheat 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i2 ec.temp run clear @s sugar 0
execute if score #ck_slot ec.temp matches 3 store result score #ck_i3 ec.temp run clear @s honey_bottle 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i1 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i2 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_i3 ec.temp matches 0 run scoreboard players set #ck_ok ec.temp 0
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s wheat 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s sugar 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 unless entity @s[tag=CK.FreeCook] run clear @s honey_bottle 1
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run loot give @s loot evercraft:cooking/seasonal/gingerbread
execute if score #ck_slot ec.temp matches 3 if score #ck_ok ec.temp matches 1 run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"You cooked ",color:"gray"},{text:"Gingerbread",color:"aqua"},{text:"!",color:"gray"}]
