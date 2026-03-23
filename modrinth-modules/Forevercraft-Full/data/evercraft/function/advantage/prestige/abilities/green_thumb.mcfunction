# Green Thumb — Auto-replant crops on harvest
# Called at player position when a harvest crate triggers
# Scans 3-block radius for farmland with air above (recently broken crops) and replants

# Scan a 5x1x5 area at foot level for farmland with air/crop seedling above
# Player is typically within 3 blocks of the broken crop
execute positioned ~-2 ~-1 ~-2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~-1 ~-1 ~-2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~ ~-1 ~-2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~1 ~-1 ~-2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~2 ~-1 ~-2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]

execute positioned ~-2 ~-1 ~-1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~-1 ~-1 ~-1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~ ~-1 ~-1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~1 ~-1 ~-1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~2 ~-1 ~-1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]

execute positioned ~-2 ~-1 ~ if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~-1 ~-1 ~ if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~ ~-1 ~ if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~1 ~-1 ~ if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~2 ~-1 ~ if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]

execute positioned ~-2 ~-1 ~1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~-1 ~-1 ~1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~ ~-1 ~1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~1 ~-1 ~1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~2 ~-1 ~1 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]

execute positioned ~-2 ~-1 ~2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~-1 ~-1 ~2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~ ~-1 ~2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~1 ~-1 ~2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]
execute positioned ~2 ~-1 ~2 if block ~ ~ ~ farmland if block ~ ~1 ~ air run setblock ~ ~1 ~ wheat[age=0]

# Particles
particle minecraft:happy_villager ~ ~0.5 ~ 1 0.3 1 0.02 5
