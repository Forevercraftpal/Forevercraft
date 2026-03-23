# Trial Anvil GUI — Set up daily challenge and navigate to that category
# Run as/at: the player

# Already completed today?
execute if score @s ec.tt_daily_done matches 1 run return run tellraw @s {"text":"You've already completed today's daily challenge!","color":"yellow"}

# Set type and tier from daily
scoreboard players operation @s ec.tt_type = @s ec.tt_daily_type
scoreboard players operation @s ec.tt_tier = @s ec.tt_daily_tier

# Navigate to the correct category view
execute if score @s ec.tt_type matches 1 run function evercraft:craftforever/trial_anvil/gui/show_mining
execute if score @s ec.tt_type matches 2 run function evercraft:craftforever/trial_anvil/gui/show_farming
execute if score @s ec.tt_type matches 3 run function evercraft:craftforever/trial_anvil/gui/show_fishing
execute if score @s ec.tt_type matches 4 run function evercraft:craftforever/trial_anvil/gui/show_building
execute if score @s ec.tt_type matches 5 run function evercraft:craftforever/trial_anvil/gui/show_lumber
execute if score @s ec.tt_type matches 6 run function evercraft:craftforever/trial_anvil/gui/show_artisan

tellraw @s [{"text":"  \u2726 ","color":"gold"},{"text":"Daily Challenge selected!","color":"yellow"},{"text":" Complete this trial for bonus rewards.","color":"gray"}]
