# Dungeon Leaderboard — Check completion time and update personal best
# Run as each dungeon participant after completion

# Compute elapsed ticks: gametime - start_time
execute store result score @s dg.elapsed run time query gametime
scoreboard players operation @s dg.elapsed -= @s dg.start_time

# Convert to seconds (/ 20)
scoreboard players operation @s dg.elapsed_s = @s dg.elapsed
scoreboard players set #20 ec.temp 20
scoreboard players operation @s dg.elapsed_s /= #20 ec.temp

# Check if this is a new personal best (or first completion)
# dg.best_time 0 = never completed, any positive value = best time in ticks
execute if score @s dg.best_time matches 0 run function evercraft:dungeon/leaderboard/new_best
execute if score @s dg.best_time matches 1.. if score @s dg.elapsed < @s dg.best_time run function evercraft:dungeon/leaderboard/new_best

# Always show completion time
execute store result storage evercraft:dungeon lb.seconds int 1 run scoreboard players get @s dg.elapsed_s
function evercraft:dungeon/leaderboard/show_time with storage evercraft:dungeon lb
