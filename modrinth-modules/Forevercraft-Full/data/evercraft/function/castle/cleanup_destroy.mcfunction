# Infinite Castle — Destroy arena at stored coordinates
# Macro args: x, y, z (arena center position)
# Uses forceload to ensure ALL chunks in 41×41 area are loaded
# Split fills to stay under 32768 block limit

# Forceload the full 41×41 area (need all 4 corners to cover all chunks)
$forceload add $(x) $(z)
$execute positioned $(x) $(y) $(z) run forceload add ~-20 ~-20 ~20 ~20

# Lower half: ±20 X/Z, -2 to +7 Y
$execute positioned $(x) $(y) $(z) run fill ~-20 ~-2 ~-20 ~20 ~7 ~20 minecraft:air

# Upper half: ±20 X/Z, +8 to +17 Y
$execute positioned $(x) $(y) $(z) run fill ~-20 ~8 ~-20 ~20 ~17 ~20 minecraft:air

# Kill center marker if still alive
$execute positioned $(x) $(y) $(z) run kill @e[type=marker,tag=ic.center,distance=..5]

# Kill any remaining castle mobs in the area
$execute positioned $(x) $(y) $(z) run kill @e[tag=ic.mob,distance=..30]

# Remove forceload
$execute positioned $(x) $(y) $(z) run forceload remove ~-20 ~-20 ~20 ~20
$forceload remove $(x) $(z)
