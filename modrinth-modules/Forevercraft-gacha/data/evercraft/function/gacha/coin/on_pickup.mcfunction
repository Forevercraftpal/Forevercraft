# Forever Coin Pickup — convert physical coins to score
# Triggered by advancement when player picks up a coin item
# Runs as @s = player

# Count how many coins the player has
execute store result score @s ec.temp run clear @s minecraft:amethyst_shard[custom_data~{forever_coin:true}] 0

# Clear all coin items from inventory
clear @s minecraft:amethyst_shard[custom_data~{forever_coin:true}]

# Add to coin score
scoreboard players operation @s ec.coins += @s ec.temp

# Copy to fake player for notify display
scoreboard players operation #coin_amount ec.temp = @s ec.temp

# Notify
function evercraft:gacha/coin/notify

# Check first coin unlock
execute if score @s ec.first_coin matches 0 run function evercraft:gacha/coin/first_coin

# Revoke advancement for re-trigger
advancement revoke @s only evercraft:gacha/coin_pickup
