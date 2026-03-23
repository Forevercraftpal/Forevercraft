# Morning News — Personal Daily Challenge (per-player)
# Run as @s (individual player). Shows dungeon or trial daily based on ec.daily_type.

# Dungeon daily (type 0): atmospheric flavor text
execute if score @s ec.daily_type matches 0 run function evercraft:dungeon/daily_challenge/flavor_structure
execute if score @s ec.daily_type matches 0 run function evercraft:dungeon/daily_challenge/flavor_modifier
execute if score @s ec.daily_type matches 0 run function evercraft:news/morning_daily_dungeon with storage evercraft:daily_challenge flavor

# Trial daily (type 1): trial name + tier
execute if score @s ec.daily_type matches 1 run function evercraft:news/morning_daily_trial with storage evercraft:trials
