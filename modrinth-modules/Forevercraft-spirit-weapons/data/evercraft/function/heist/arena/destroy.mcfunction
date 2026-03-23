# Black Market Heist — Destroy Arena
# Fills the entire arena with air and kills all heist entities

# Fill arena with air (center marker is at ~0 ~1 ~30)
# Arena spans x:-6 to x:6, y:-2 to y:8, z:-2 to z:62 relative to center
execute at @e[type=marker,tag=heist.center,limit=1] run fill ~-6 ~-3 ~-32 ~6 ~7 ~32 minecraft:air

# Kill all heist entities
kill @e[type=marker,tag=heist.center]
kill @e[type=marker,tag=heist.endzone]
kill @e[tag=heist.hazard]
kill @e[tag=heist.boat]
