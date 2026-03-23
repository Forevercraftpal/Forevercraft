# Black Market Quick-Sell — Sell held artifact or satchel for Forever Coins
# Run as player, at player position

# Check if holding a sellable item (artifact or satchel)
execute unless items entity @s weapon.mainhand *[custom_data~{artifact:true}] unless items entity @s weapon.mainhand *[custom_data~{satchel:true}] run return run tellraw @s [{text:"  Hold an artifact or satchel in your mainhand to quick-sell.",color:"red"}]

# Block hero's satchel (unique, one per player)
execute if items entity @s weapon.mainhand *[custom_data~{hero_satchel:true}] run return run tellraw @s [{text:"  The Hero's Satchel is too valuable to sell!",color:"red"}]

# Block satchels that contain items (bundle_contents not empty)
execute if items entity @s weapon.mainhand *[custom_data~{satchel:true}] if data entity @s SelectedItem.components."minecraft:bundle_contents"[0] run return run tellraw @s [{text:"  Empty the satchel before selling it!",color:"red"}]

# === Satchel pricing (string-based tiers) ===
scoreboard players set #qs_price ec.temp 0
execute if items entity @s weapon.mainhand *[custom_data~{satchel_tier:"common"}] run scoreboard players set #qs_price ec.temp 5
execute if items entity @s weapon.mainhand *[custom_data~{satchel_tier:"uncommon"}] run scoreboard players set #qs_price ec.temp 10
execute if items entity @s weapon.mainhand *[custom_data~{satchel_tier:"rare"}] run scoreboard players set #qs_price ec.temp 15
execute if items entity @s weapon.mainhand *[custom_data~{satchel_tier:"ornate"}] run scoreboard players set #qs_price ec.temp 25
execute if items entity @s weapon.mainhand *[custom_data~{satchel_tier:"exquisite"}] run scoreboard players set #qs_price ec.temp 35
execute if items entity @s weapon.mainhand *[custom_data~{satchel_tier:"mythical"}] run scoreboard players set #qs_price ec.temp 50

# === Artifact pricing (numeric tiers) ===
# Base artifact prices (weapons/armor/tools)
execute if items entity @s weapon.mainhand *[custom_data~{artifact:true}] store result score #qs_tier ec.temp run data get entity @s SelectedItem.components."minecraft:custom_data".tier_num
execute if items entity @s weapon.mainhand *[custom_data~{artifact:true}] if score #qs_tier ec.temp matches 1 run scoreboard players set #qs_price ec.temp 2
execute if items entity @s weapon.mainhand *[custom_data~{artifact:true}] if score #qs_tier ec.temp matches 2 run scoreboard players set #qs_price ec.temp 4
execute if items entity @s weapon.mainhand *[custom_data~{artifact:true}] if score #qs_tier ec.temp matches 3 run scoreboard players set #qs_price ec.temp 8
execute if items entity @s weapon.mainhand *[custom_data~{artifact:true}] if score #qs_tier ec.temp matches 4 run scoreboard players set #qs_price ec.temp 20
execute if items entity @s weapon.mainhand *[custom_data~{artifact:true}] if score #qs_tier ec.temp matches 5 run scoreboard players set #qs_price ec.temp 32
execute if items entity @s weapon.mainhand *[custom_data~{artifact:true}] if score #qs_tier ec.temp matches 6 run scoreboard players set #qs_price ec.temp 50

# Accessory override (higher value, overrides base artifact price)
execute if items entity @s weapon.mainhand *[custom_data~{accessory:true}] if score #qs_tier ec.temp matches 1 run scoreboard players set #qs_price ec.temp 3
execute if items entity @s weapon.mainhand *[custom_data~{accessory:true}] if score #qs_tier ec.temp matches 2 run scoreboard players set #qs_price ec.temp 5
execute if items entity @s weapon.mainhand *[custom_data~{accessory:true}] if score #qs_tier ec.temp matches 3 run scoreboard players set #qs_price ec.temp 10
execute if items entity @s weapon.mainhand *[custom_data~{accessory:true}] if score #qs_tier ec.temp matches 4 run scoreboard players set #qs_price ec.temp 35
execute if items entity @s weapon.mainhand *[custom_data~{accessory:true}] if score #qs_tier ec.temp matches 5 run scoreboard players set #qs_price ec.temp 75
execute if items entity @s weapon.mainhand *[custom_data~{accessory:true}] if score #qs_tier ec.temp matches 6 run scoreboard players set #qs_price ec.temp 125

# Boss exclusive artifact override (flat 25 coins)
execute if items entity @s weapon.mainhand *[custom_data~{boss_exclusive:true}] run scoreboard players set #qs_price ec.temp 25

# Store item name for display
data modify storage evercraft:black_market quick_sell.item_name set from entity @s SelectedItem.components."minecraft:custom_name"

# Remove the item from hand
item replace entity @s weapon.mainhand with minecraft:air

# Grant coins
scoreboard players operation @s ec.coins += #qs_price ec.temp

# Announce sale
function evercraft:black_market/quick_sell_announce with storage evercraft:black_market quick_sell

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 0.8
playsound minecraft:block.amethyst_block.break master @s ~ ~ ~ 0.5 1.5
