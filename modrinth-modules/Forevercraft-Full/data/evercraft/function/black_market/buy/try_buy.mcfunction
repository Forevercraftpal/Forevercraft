# ============================================================
# Black Market — Try Buy
# Validates currency, deducts netherite, gives item
# ec.bm_select = deal index (0-13) in the deals array
# ============================================================

# Load the selected deal into temp storage via macro
execute store result storage eden:database black_market.temp.select int 1 run scoreboard players get @s ec.bm_select
function evercraft:black_market/buy/load_deal with storage eden:database black_market.temp

# Read price from loaded deal
execute store result score #bm_price ec.bm_temp run data get storage eden:database black_market.temp.buy_deal.price

# Reaper villain discount (infamy 4000+: 20% off, 2000+: 10% off)
execute if score @s rp.infamy matches 4000.. run scoreboard players operation #bm_price ec.bm_temp *= #80 rp.temp
execute if score @s rp.infamy matches 4000.. run scoreboard players operation #bm_price ec.bm_temp /= #100 rp.temp
execute if score @s rp.infamy matches 2000..3999 run scoreboard players operation #bm_price ec.bm_temp *= #90 rp.temp
execute if score @s rp.infamy matches 2000..3999 run scoreboard players operation #bm_price ec.bm_temp /= #100 rp.temp
execute if score #bm_price ec.bm_temp matches ..0 run scoreboard players set #bm_price ec.bm_temp 1

# Count player's netherite (without removing)
execute store result score #bm_has ec.bm_temp run clear @s netherite_ingot 0

# Check if enough
execute if score #bm_has ec.bm_temp < #bm_price ec.bm_temp run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Not enough Netherite! You need ",color:"red"},{score:{name:"#bm_price",objective:"ec.bm_temp"},color:"white",bold:true},{text:" but only have ",color:"red"},{score:{name:"#bm_has",objective:"ec.bm_temp"},color:"white",bold:true},{text:".",color:"red"}]

# Deduct netherite and give item via macro
function evercraft:black_market/buy/buy_macro with storage eden:database black_market.temp.buy_deal

# Feedback
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.3 0.3 0.1 8
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Purchased! Check your inventory.",color:"green"}]

# Refresh GUI (update netherite display)
function evercraft:black_market/gui/update_netherite
