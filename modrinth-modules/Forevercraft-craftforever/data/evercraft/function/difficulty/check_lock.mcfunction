# Check if 14-day lock has expired — return 0 to block caller if still locked
# @s = player (already has ec.difficulty 1..2)

execute store result score #_diff_now ec.temp run time query day
scoreboard players operation #_diff_now ec.temp -= @s ec.diff_day

# If fewer than 14 days have passed, show locked message and abort
execute if score #_diff_now ec.temp matches ..13 run function evercraft:difficulty/locked_msg
execute if score #_diff_now ec.temp matches ..13 run scoreboard players set @s ec.diff_trigger 0
execute if score #_diff_now ec.temp matches ..13 run scoreboard players enable @s ec.diff_trigger
execute if score #_diff_now ec.temp matches ..13 run return 0
