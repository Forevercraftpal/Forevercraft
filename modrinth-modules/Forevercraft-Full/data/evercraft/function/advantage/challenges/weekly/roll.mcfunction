# Weekly Challenge Roll — Deterministic rotation through 13 trees
# Called when #visual_day % 7 == 0 and day has changed

# Deterministic tree: (visual_day / 7) % 13 + 1
execute store result score #weekly_calc adv.temp run time query day
scoreboard players operation #weekly_calc adv.temp /= #7 adv.temp
scoreboard players operation #weekly_calc adv.temp %= #13 adv.temp
scoreboard players add #weekly_calc adv.temp 1

# Set global weekly tree
scoreboard players operation #adv_weekly_tree adv.temp = #weekly_calc adv.temp

# Record current day to prevent re-rolling
execute store result score #adv_weekly_day adv.temp run time query day

# Reset all players' weekly completion status
scoreboard players set @a adv.weekly_done 0

# Announce
function evercraft:advantage/challenges/weekly/announce
