# Blacksmith — Speed up nearby furnaces
# Runs every 1s from tick/main. Checks 3x3 area for active furnaces.
# Scales cooking_time_spent progress based on level: level * 4% bonus speed (max 100% at 25 = instant)

# Skip if no one has blacksmith
execute unless entity @a[scores={adv.blacksmith=1..}] run return 0

# For each player with blacksmith levels, boost nearby furnaces
execute as @a[scores={adv.blacksmith=1..}] at @s run function evercraft:advantage/blacksmith/try_boost
