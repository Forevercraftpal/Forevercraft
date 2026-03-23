# Duel Arena — Build (gladiator theme, 31x17x31)
# Runs positioned at the arena base (172 blocks above accept point)

# Summon center marker for cleanup later
summon marker ~ ~1 ~ {Tags:["duel.center"]}

# === FOUNDATION (supports sand so it doesn't fall into void) ===
fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 minecraft:deepslate_bricks

# === FLOOR ===
# Main floor — deepslate tiles
fill ~-15 ~ ~-15 ~15 ~ ~15 minecraft:deepslate_tiles

# Fighting pit center — sand (gladiator feel), 9x9
fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:sand

# === WALLS (5 blocks high) ===
# North wall
fill ~-15 ~1 ~-15 ~15 ~5 ~-15 minecraft:deepslate_bricks
# South wall
fill ~-15 ~1 ~15 ~15 ~5 ~15 minecraft:deepslate_bricks
# East wall
fill ~15 ~1 ~-15 ~15 ~5 ~15 minecraft:deepslate_bricks
# West wall
fill ~-15 ~1 ~-15 ~-15 ~5 ~15 minecraft:deepslate_bricks

# === HOLLOW OUT INTERIOR (air inside walls, above floor) ===
fill ~-14 ~1 ~-14 ~14 ~16 ~14 minecraft:air

# === SPECTATOR STANDS (4 tiers on each side) ===
# North stands (tiers rise from pit outward)
fill ~-12 ~1 ~-13 ~12 ~1 ~-13 minecraft:deepslate_brick_stairs[facing=south]
fill ~-12 ~2 ~-14 ~12 ~2 ~-14 minecraft:deepslate_brick_stairs[facing=south]
fill ~-12 ~1 ~-14 ~12 ~1 ~-14 minecraft:deepslate_bricks

# South stands
fill ~-12 ~1 ~13 ~12 ~1 ~13 minecraft:deepslate_brick_stairs[facing=north]
fill ~-12 ~2 ~14 ~12 ~2 ~14 minecraft:deepslate_brick_stairs[facing=north]
fill ~-12 ~1 ~14 ~12 ~1 ~14 minecraft:deepslate_bricks

# East stands
fill ~13 ~1 ~-12 ~13 ~1 ~12 minecraft:deepslate_brick_stairs[facing=west]
fill ~14 ~2 ~-12 ~14 ~2 ~12 minecraft:deepslate_brick_stairs[facing=west]
fill ~14 ~1 ~-12 ~14 ~1 ~12 minecraft:deepslate_bricks

# West stands
fill ~-13 ~1 ~-12 ~-13 ~1 ~12 minecraft:deepslate_brick_stairs[facing=east]
fill ~-14 ~2 ~-12 ~-14 ~2 ~12 minecraft:deepslate_brick_stairs[facing=east]
fill ~-14 ~1 ~-12 ~-14 ~1 ~12 minecraft:deepslate_bricks

# === BARRIER WALL between stands and pit (3 high at pit edge) ===
# Inner barrier ring at +-12 (invisible wall)
fill ~-12 ~1 ~-12 ~12 ~3 ~-12 minecraft:barrier
fill ~-12 ~1 ~12 ~12 ~3 ~12 minecraft:barrier
fill ~-12 ~1 ~-12 ~-12 ~3 ~12 minecraft:barrier
fill ~12 ~1 ~-12 ~12 ~3 ~12 minecraft:barrier

# Re-clear the pit interior (barriers may have filled pit area)
fill ~-11 ~1 ~-11 ~11 ~16 ~11 minecraft:air

# === LIGHTING ===
# Corner pillars with soul lanterns
setblock ~-14 ~3 ~-14 minecraft:soul_lantern
setblock ~14 ~3 ~-14 minecraft:soul_lantern
setblock ~-14 ~3 ~14 minecraft:soul_lantern
setblock ~14 ~3 ~14 minecraft:soul_lantern

# Sea lanterns at mid-walls (floor level for arena lighting)
setblock ~0 ~1 ~-14 minecraft:sea_lantern
setblock ~0 ~1 ~14 minecraft:sea_lantern
setblock ~-14 ~1 ~0 minecraft:sea_lantern
setblock ~14 ~1 ~0 minecraft:sea_lantern

# Additional sea lanterns in the pit floor for visibility
setblock ~-4 ~ ~-4 minecraft:sea_lantern
setblock ~4 ~ ~-4 minecraft:sea_lantern
setblock ~-4 ~ ~4 minecraft:sea_lantern
setblock ~4 ~ ~4 minecraft:sea_lantern
