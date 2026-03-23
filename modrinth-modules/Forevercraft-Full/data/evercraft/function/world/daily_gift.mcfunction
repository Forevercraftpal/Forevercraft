# Allowance of Dreams — grants Forever Coins scaled by Dream Rate every 6 real hours
# Run as player (from on_join)
# Uses gametime for real-time tracking (6 hours = 432000 ticks)

# Get current gametime
execute store result score #current_time ec.temp run time query gametime

# First-time players: no score yet → grant immediately
execute unless score @s ec.last_gift_time matches -2147483648.. run function evercraft:world/daily_gift_roll
execute unless score @s ec.last_gift_time matches -2147483648.. store result score @s ec.last_gift_time run time query gametime
execute unless score @s ec.last_gift_time matches -2147483648.. run return 0

# Calculate elapsed: current - last_gift_time
scoreboard players operation #elapsed ec.temp = #current_time ec.temp
scoreboard players operation #elapsed ec.temp -= @s ec.last_gift_time

# 6 hours = 432000 ticks (6 * 60 * 60 * 20)
execute if score #elapsed ec.temp matches 432000.. run function evercraft:world/daily_gift_roll
execute if score #elapsed ec.temp matches 432000.. store result score @s ec.last_gift_time run time query gametime
