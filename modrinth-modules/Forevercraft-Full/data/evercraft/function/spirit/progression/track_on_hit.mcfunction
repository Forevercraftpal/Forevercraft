# Spirit Progression — On-Hit Kill Streak Tracking
# Called from each weapon's on_hit file (or can be hooked centrally)
# Increments current kill streak and updates max if exceeded

# Increment current streak
scoreboard players add @s ec.sp_cur_streak 1

# Update max kill streak if current exceeds it
execute if score @s ec.sp_cur_streak > @s ec.sp_kill_streak run scoreboard players operation @s ec.sp_kill_streak = @s ec.sp_cur_streak
