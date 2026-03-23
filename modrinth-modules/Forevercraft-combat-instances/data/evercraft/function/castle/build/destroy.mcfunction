# Infinite Castle — Destroy Room
# Fills 41×41 max envelope with air (covers largest possible room)
# Run at ic.center marker position
# Split into two fills to stay under 32768 block limit

# Lower half: ±20 X/Z, -2 to +7 Y (41×10×41 = 16,810)
fill ~-20 ~-2 ~-20 ~20 ~7 ~20 minecraft:air

# Upper half: ±20 X/Z, +8 to +17 Y (41×10×41 = 16,810)
fill ~-20 ~8 ~-20 ~20 ~17 ~20 minecraft:air

# Kill the center marker
kill @e[type=marker,tag=ic.center]
