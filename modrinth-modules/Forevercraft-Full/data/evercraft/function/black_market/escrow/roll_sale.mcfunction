# ============================================================
# Black Market — Roll Sale (4% Daily Chance)
# Run as: each player during daily reset
# Checks if player has listings, rolls 4%, sells one if hit
# ============================================================

# Build UUID key
execute store result storage eden:database black_market.temp.u0 int 1 run data get entity @s UUID[0]
execute store result storage eden:database black_market.temp.u1 int 1 run data get entity @s UUID[1]
execute store result storage eden:database black_market.temp.u2 int 1 run data get entity @s UUID[2]
execute store result storage eden:database black_market.temp.u3 int 1 run data get entity @s UUID[3]

# Check if player has escrow data at all
function evercraft:black_market/escrow/check_has_listings with storage eden:database black_market.temp

# If no listings, skip entirely
execute if score @s ec.bm_listings matches ..0 run return 0

# Roll the 4% chance (1-4 out of 100)
execute store result score #bm_roll ec.bm_temp run random value 1 100
execute unless score #bm_roll ec.bm_temp matches 1..4 run return 0

# === SALE TRIGGERED ===
# Pick a random listing to sell (0 to count-1)
scoreboard players remove @s ec.bm_listings 1
execute store result score #bm_max ec.bm_temp run scoreboard players get @s ec.bm_listings
scoreboard players add @s ec.bm_listings 1
execute store result storage eden:database black_market.temp.slot int 1 run random value 0 0
execute if score @s ec.bm_listings matches 2.. store result storage eden:database black_market.temp.slot int 1 run random value 0 1
execute if score @s ec.bm_listings matches 3.. store result storage eden:database black_market.temp.slot int 1 run random value 0 2
execute if score @s ec.bm_listings matches 4.. store result storage eden:database black_market.temp.slot int 1 run random value 0 3
execute if score @s ec.bm_listings matches 5 store result storage eden:database black_market.temp.slot int 1 run random value 0 4

# Load the item's price
function evercraft:black_market/escrow/load_sale_price with storage eden:database black_market.temp

# Add price to player's pending balance
function evercraft:black_market/escrow/add_balance with storage eden:database black_market.temp

# Remove the sold item from escrow
function evercraft:black_market/escrow/remove_listing with storage eden:database black_market.temp

# Set sale pending flag
function evercraft:black_market/escrow/set_sale_pending with storage eden:database black_market.temp

# If player is online, notify immediately
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Someone bought your goods yesterday!",color:"gold"}]
