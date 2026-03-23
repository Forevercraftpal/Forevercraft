# Black Market Heist — Variant 3: The Maze
# Dense walls, no combat, pure pathfinding under timer pressure
# Runs positioned at arena base. Interior fills z=9 to z=50.

# Dark atmosphere — minimal lighting
setblock ~0 ~0 ~10 minecraft:soul_lantern
setblock ~0 ~0 ~30 minecraft:soul_lantern
setblock ~0 ~0 ~49 minecraft:soul_lantern

# === MAZE WALLS (polished_blackstone_bricks, floor to 4 high) ===
# Row 1 (z=9-10): force left entry
fill ~0 ~1 ~9 ~4 ~4 ~10 minecraft:polished_blackstone_bricks

# Row 2 (z=12-13): block left, open right
fill ~-4 ~1 ~12 ~1 ~4 ~13 minecraft:polished_blackstone_bricks

# Row 3 (z=15-16): block right, open far left
fill ~-1 ~1 ~15 ~4 ~4 ~16 minecraft:polished_blackstone_bricks

# Row 4 (z=18-19): block left and center, open right
fill ~-4 ~1 ~18 ~2 ~4 ~19 minecraft:polished_blackstone_bricks

# Corridor section (z=20-23): narrow right-side path
fill ~-4 ~1 ~20 ~2 ~4 ~23 minecraft:polished_blackstone_bricks

# Row 5 (z=24-25): open left, block right
fill ~-1 ~1 ~24 ~4 ~4 ~25 minecraft:polished_blackstone_bricks

# Row 6 (z=27-28): block center
fill ~-2 ~1 ~27 ~2 ~4 ~28 minecraft:polished_blackstone_bricks

# Dead end trap left (z=29-31)
fill ~-4 ~1 ~29 ~-3 ~4 ~31 minecraft:polished_blackstone_bricks
fill ~-4 ~1 ~31 ~-1 ~4 ~31 minecraft:polished_blackstone_bricks

# Row 7 (z=33-34): block left
fill ~-4 ~1 ~33 ~0 ~4 ~34 minecraft:polished_blackstone_bricks

# Zigzag corridor (z=35-40)
fill ~-1 ~1 ~35 ~4 ~4 ~36 minecraft:polished_blackstone_bricks
fill ~-4 ~1 ~37 ~1 ~4 ~38 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~39 ~4 ~4 ~40 minecraft:polished_blackstone_bricks

# Row 8 (z=42-43): block right
fill ~-1 ~1 ~42 ~4 ~4 ~43 minecraft:polished_blackstone_bricks

# Dead end trap right (z=44-46)
fill ~3 ~1 ~44 ~4 ~4 ~46 minecraft:polished_blackstone_bricks
fill ~0 ~1 ~44 ~4 ~4 ~44 minecraft:polished_blackstone_bricks

# Row 9 (z=47-48): final block, open left
fill ~-1 ~1 ~47 ~4 ~4 ~48 minecraft:polished_blackstone_bricks

# Final approach open at z=49-50
