# Grant Forever Coins to player
# Called with: execute ... run function evercraft:gacha/coin/grant
# Expects: #coin_amount ec.temp = number of coins to grant
# Runs as @s = player

# Add coins
scoreboard players operation @s ec.coins += #coin_amount ec.temp

# Check for first coin (unlock Fountain)
execute if score @s ec.first_coin matches 0 run function evercraft:gacha/coin/first_coin

# Notify
function evercraft:gacha/coin/notify
