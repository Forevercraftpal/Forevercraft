# Tamable Ocelot — Follow Tick
# Runs as the ocelot, at ocelot position. Owner has tag ec.ocelot_owner.

# Teleport if owner > 36 blocks away
execute if entity @a[tag=ec.ocelot_owner,distance=36..] run tp @s @a[tag=ec.ocelot_owner,limit=1]
execute if entity @a[tag=ec.ocelot_owner,distance=36..] run return 0

# Speed boost if 18-36 blocks away (help ocelot catch up)
execute if entity @a[tag=ec.ocelot_owner,distance=18..36] run effect give @s speed 2 1 true

# Close enough — clear speed effect
execute if entity @a[tag=ec.ocelot_owner,distance=..17] run effect clear @s speed

# Sync interaction entity to ocelot position
execute at @s run tp @e[type=interaction,tag=ec.ocelot_interact,distance=..3,limit=1] @s
