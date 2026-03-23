# Dreaming Realm — Destroy Arena
# Erases the arena and all dream entities
# Can be called from any position (uses dr.center marker for reference)

# Kill all dream mobs (phantoms, endermen, etc.)
kill @e[tag=ec.dream_mob]

# Kill dream entities EXCEPT the center marker (need it for the fill)
kill @e[tag=ec.dream_entity]

# Erase the arena (fill with air from marker position)
# Marker is at Y=302. Arena: Y=300 to Y=316 = ~-2 to ~14 from marker
# 41x17x41 = 28,577 blocks (under 32,768 limit)
execute at @e[type=marker,tag=dr.center,limit=1] run fill ~-20 ~-2 ~-20 ~20 ~14 ~20 air

# Kill the center marker last
kill @e[type=marker,tag=dr.center]
