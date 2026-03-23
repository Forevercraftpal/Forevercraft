# Explorer — Reduce structure chest refresh timer
# Called from mark_looted when a structure crate is spawned
# Reduction: level * 2% off base timer (max 50% at level 25 = half refresh time)
# Minimum timer: 1,800,000 ticks (25 in-game days)
# Run as the player, marker has tag cf.new_marker

# Skip if no explorer level
execute unless score @s adv.explorer matches 1.. run return 0

# Read current timer from marker
# Base timer = 3,600,000 ticks (50 in-game days @ 72000 ticks/day)
execute store result score #timer cf.temp run data get entity @e[type=marker,tag=cf.new_marker,limit=1] data.refresh_timer

# Calculate reduction amount: timer * level * 2 / 100
scoreboard players operation #reduce cf.temp = @s adv.explorer
scoreboard players operation #reduce cf.temp *= #2 adv.temp
scoreboard players operation #reduce cf.temp *= #timer cf.temp
scoreboard players operation #reduce cf.temp /= #100 adv.temp

# Subtract reduction from timer
scoreboard players operation #timer cf.temp -= #reduce cf.temp

# Minimum 1,800,000 ticks (25 in-game days = 50% of base)
execute if score #timer cf.temp matches ..1800000 run scoreboard players set #timer cf.temp 1800000

# Write back to marker
execute store result entity @e[type=marker,tag=cf.new_marker,limit=1] data.refresh_timer int 1 run scoreboard players get #timer cf.temp
