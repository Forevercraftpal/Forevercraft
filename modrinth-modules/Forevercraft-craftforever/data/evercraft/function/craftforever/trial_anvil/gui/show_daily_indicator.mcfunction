# Trial Anvil GUI — Show daily challenge indicator
# Run as/at: the TT.InMenu player

# Build daily name
execute if score @s ec.tt_daily_type matches 1 run data modify storage evercraft:trials daily_name set value "Mining"
execute if score @s ec.tt_daily_type matches 2 run data modify storage evercraft:trials daily_name set value "Farming"
execute if score @s ec.tt_daily_type matches 3 run data modify storage evercraft:trials daily_name set value "Fishing"
execute if score @s ec.tt_daily_type matches 4 run data modify storage evercraft:trials daily_name set value "Building"
execute if score @s ec.tt_daily_type matches 5 run data modify storage evercraft:trials daily_name set value "Lumber"
execute if score @s ec.tt_daily_type matches 6 run data modify storage evercraft:trials daily_name set value "Artisan"
execute store result storage evercraft:trials daily_tier int 1 run scoreboard players get @s ec.tt_daily_tier

function evercraft:craftforever/trial_anvil/gui/spawn_daily_text with storage evercraft:trials
