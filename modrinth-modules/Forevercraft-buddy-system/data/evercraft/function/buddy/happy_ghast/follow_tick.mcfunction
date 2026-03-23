# Happy Ghast — Follow Tick
# @s = tamed happy ghast (not sitting), at ghast position. Owner has tag ec.ghast_owner.

# Teleport if owner > 48 blocks away (larger range for flying mob)
execute if entity @a[tag=ec.ghast_owner,distance=48..] run tp @s @a[tag=ec.ghast_owner,limit=1]
execute if entity @a[tag=ec.ghast_owner,distance=48..] run return 0

# Speed boost if 24-48 blocks away
execute if entity @a[tag=ec.ghast_owner,distance=24..48] run effect give @s speed 2 2 true

# Close enough — clear speed
execute if entity @a[tag=ec.ghast_owner,distance=..23] run effect clear @s speed

# Sync interaction entity to ghast position
execute at @s run tp @e[type=interaction,tag=ec.ghast_interact,distance=..5,limit=1] @s
