# Trade Trial — Roll a new daily challenge
# Called once per day (from tick or on first login)
# Uses gametime-based pseudo-random to pick type (1-6) and tier (1-10)

# Get current day number
execute store result score #tt_today ec.var run time query day

# Check if already rolled today (global)
execute if score #tt_daily_day ec.var = #tt_today ec.var run return 0

# Store today's day number
scoreboard players operation #tt_daily_day ec.var = #tt_today ec.var

# Pseudo-random type (1-6): day mod 6 + 1, with gametime salt
execute store result score #tt_rand ec.var run time query gametime
scoreboard players operation #tt_rand ec.var %= #6 ec.const
scoreboard players add #tt_rand ec.var 1
scoreboard players operation #tt_daily_type ec.var = #tt_rand ec.var

# Pseudo-random tier (1-7 for daily, not 8-10 which are too hard for daily):
# day mod 7 + 1
scoreboard players operation #tt_rand ec.var = #tt_today ec.var
scoreboard players operation #tt_rand ec.var %= #7 ec.const
scoreboard players add #tt_rand ec.var 1
scoreboard players operation #tt_daily_tier ec.var = #tt_rand ec.var

# Store daily for all players
execute as @a run scoreboard players operation @s ec.tt_daily_type = #tt_daily_type ec.var
execute as @a run scoreboard players operation @s ec.tt_daily_tier = #tt_daily_tier ec.var
execute as @a run scoreboard players set @s ec.tt_daily_done 0
execute as @a run scoreboard players operation @s ec.tt_daily_day = #tt_today ec.var

# Announce daily challenge
execute store result storage evercraft:trials daily_tier int 1 run scoreboard players get #tt_daily_tier ec.var
execute if score #tt_daily_type ec.var matches 1 run data modify storage evercraft:trials daily_name set value "Mining"
execute if score #tt_daily_type ec.var matches 2 run data modify storage evercraft:trials daily_name set value "Farming"
execute if score #tt_daily_type ec.var matches 3 run data modify storage evercraft:trials daily_name set value "Fishing"
execute if score #tt_daily_type ec.var matches 4 run data modify storage evercraft:trials daily_name set value "Building"
execute if score #tt_daily_type ec.var matches 5 run data modify storage evercraft:trials daily_name set value "Lumber"
execute if score #tt_daily_type ec.var matches 6 run data modify storage evercraft:trials daily_name set value "Artisan"
function evercraft:craftforever/trials/daily_announce with storage evercraft:trials
