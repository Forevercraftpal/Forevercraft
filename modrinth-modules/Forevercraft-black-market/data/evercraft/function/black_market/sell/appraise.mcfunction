# ============================================================
# Black Market — Appraise Held Item
# Checks mainhand and determines sell price
# Sets ec.bm_price (0 = unsellable)
# Only ornate+ artifacts can be sold. Accessories pay more.
# ============================================================

# Reset price
scoreboard players set @s ec.bm_price 0

# Check if holding anything
execute unless items entity @s weapon.mainhand * run return run data modify entity @e[type=text_display,tag=BM.AppraiseTxt,distance=..8,limit=1] text set value {text:"Your mainhand is empty!",color:"red"}

# === ORNATE+ ARTIFACT PRICING ===
# Accessories pay more than non-accessories at each tier.
# Check accessory variant first (higher price), then base tier with unless-accessory.

# Ornate: accessory = 2 NI, non-accessory = 1 NI
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate",accessory:true}] run scoreboard players set @s ec.bm_price 2
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"ornate"}] unless items entity @s weapon.mainhand *[custom_data~{accessory:true}] run scoreboard players set @s ec.bm_price 1

# Exquisite: accessory = 6 NI, non-accessory = 4 NI
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"exquisite",accessory:true}] run scoreboard players set @s ec.bm_price 6
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"exquisite"}] unless items entity @s weapon.mainhand *[custom_data~{accessory:true}] run scoreboard players set @s ec.bm_price 4

# Mythical: accessory = 12 NI, non-accessory = 8 NI
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"mythical",accessory:true}] run scoreboard players set @s ec.bm_price 12
execute if items entity @s weapon.mainhand *[custom_data~{is_artifact:true,tier:"mythical"}] unless items entity @s weapon.mainhand *[custom_data~{accessory:true}] run scoreboard players set @s ec.bm_price 8

# === VANILLA ITEM WHITELIST ===
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand conduit run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand beacon run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand dragon_egg run scoreboard players set @s ec.bm_price 16
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand elytra run scoreboard players set @s ec.bm_price 3
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand enchanted_golden_apple run scoreboard players set @s ec.bm_price 1
execute if score @s ec.bm_price matches 0 if items entity @s weapon.mainhand heavy_core run scoreboard players set @s ec.bm_price 1

# === UPDATE APPRAISAL DISPLAY ===
# If price is 0, item cannot be sold
execute if score @s ec.bm_price matches 0 run data modify entity @e[type=text_display,tag=BM.AppraiseTxt,distance=..8,limit=1] text set value {text:"This item cannot be sold here.",color:"red"}
execute if score @s ec.bm_price matches 0 run return 0

# Price found — show it via macro
execute store result storage eden:database black_market.temp.sell_price int 1 run scoreboard players get @s ec.bm_price
function evercraft:black_market/sell/show_appraisal with storage eden:database black_market.temp

playsound minecraft:block.note_block.bell master @s ~ ~ ~ 0.5 1.5
