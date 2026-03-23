# ============================================================
# Black Market — Confirm Buy
# First click: show confirmation prompt
# Second click (same deal): execute purchase
# ============================================================

# Check if this is a confirmation of the same pending deal
scoreboard players set #bm_confirmed ec.bm_temp 0
execute unless score @s ec.bm_confirm matches -1 if score @s ec.bm_confirm = @s ec.bm_select run scoreboard players set #bm_confirmed ec.bm_temp 1

# If confirmed, execute the purchase
execute if score #bm_confirmed ec.bm_temp matches 1 run scoreboard players set @s ec.bm_confirm -1
execute if score #bm_confirmed ec.bm_temp matches 1 run function evercraft:black_market/buy/try_buy
execute if score #bm_confirmed ec.bm_temp matches 1 run return 0

# Not confirmed yet — set pending and show prompt
scoreboard players operation @s ec.bm_confirm = @s ec.bm_select

# Load deal info for the confirmation message
execute store result storage eden:database black_market.temp.select int 1 run scoreboard players get @s ec.bm_select
function evercraft:black_market/buy/load_deal with storage eden:database black_market.temp

# Show confirmation tellraw
function evercraft:black_market/buy/show_confirm with storage eden:database black_market.temp.buy_deal

# Feedback sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.5
