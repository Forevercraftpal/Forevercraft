# Housing Garden — Growth Tick
# Run as: HS.Marker entity, at its position
# Tier 3+ hearthstones grant crop growth acceleration in 64-block radius
# Picks 2 random positions each tick and tries to advance crops there

# Attempt 1
execute store result storage evercraft:housing temp.gx int 1 run random value -64..64
execute store result storage evercraft:housing temp.gz int 1 run random value -64..64
function evercraft:housing/garden/try_grow with storage evercraft:housing temp

# Attempt 2
execute store result storage evercraft:housing temp.gx int 1 run random value -64..64
execute store result storage evercraft:housing temp.gz int 1 run random value -64..64
function evercraft:housing/garden/try_grow with storage evercraft:housing temp

# Tier 5: 2 extra attempts (4 total = ~2x growth)
execute store result score #hs_owner_tier hs.temp run data get entity @s data.owner_tier
execute unless score #hs_owner_tier hs.temp matches 5 run return 0

execute store result storage evercraft:housing temp.gx int 1 run random value -64..64
execute store result storage evercraft:housing temp.gz int 1 run random value -64..64
function evercraft:housing/garden/try_grow with storage evercraft:housing temp

execute store result storage evercraft:housing temp.gx int 1 run random value -64..64
execute store result storage evercraft:housing temp.gz int 1 run random value -64..64
function evercraft:housing/garden/try_grow with storage evercraft:housing temp
