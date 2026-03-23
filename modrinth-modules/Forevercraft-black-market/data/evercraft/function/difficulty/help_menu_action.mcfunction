# Difficulty — Help Menu Action (run as the player)
# If unchosen or 14+ days elapsed → show selection prompt
# If locked → show current difficulty + remaining days

# Unchosen → prompt immediately
execute unless score @s ec.difficulty matches 1..2 run return run function evercraft:difficulty/prompt

# Check elapsed days since last choice
execute store result score #_diff_now ec.temp run time query day
scoreboard players operation #_diff_now ec.temp -= @s ec.diff_day

# Unlocked (14+ days) → show prompt
execute if score #_diff_now ec.temp matches 14.. run return run function evercraft:difficulty/prompt

# Locked → show status with timer
function evercraft:difficulty/show_status
