# Weekly Challenge Rotation Check — Called when day changes
# Checks if a new week has started (every 7 days)

execute store result score #wk_check adv.temp run time query day
scoreboard players operation #wk_mod adv.temp = #wk_check adv.temp
scoreboard players operation #wk_mod adv.temp %= #7 adv.temp

# Only roll on day 0 of each week
execute unless score #wk_mod adv.temp matches 0 run return run execute store result score #adv_weekly_day adv.temp run time query day

# New week! Roll
function evercraft:advantage/challenges/weekly/roll
