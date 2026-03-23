# Day Counter — Dawn Display
# Called once per dawn (day number change) for all players
# Shows RPG-style title: "Day X" with era subtitle
# Slow daylight: day number = time query day + 1 (1-indexed)

# Get current day number (1-indexed)
execute store result score #day_num ec.var run time query day
scoreboard players add #day_num ec.var 1

# Calculate era index: (day / 365) % 25 + 1
# This gives era 1-25, cycling every 25 years (9125 days)
scoreboard players operation #era_calc ec.var = #day_num ec.var
scoreboard players operation #era_calc ec.var /= #365 ec.const
scoreboard players operation #era_calc ec.var %= #25 ec.const
scoreboard players add #era_calc ec.var 1

# Store day_num to storage sub-path for macro use
execute store result storage evercraft:day_counter args.day_num int 1 run scoreboard players get #day_num ec.var

# Look up era name and write to storage (must happen BEFORE show_title macro call)
function evercraft:day_counter/era_name

# Display to all players — show_title reads $(day_num) and $(era_name) from storage
execute as @a at @s run function evercraft:day_counter/show_title with storage evercraft:day_counter args

# Dawn chorus ambient sounds
function evercraft:day_counter/dawn_chorus
