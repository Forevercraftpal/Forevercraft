# Black Market Heist — Common Arena Shell
# Builds the shared structure: foundation, walls, ceiling, start room, end room
# Runs positioned at barrel X, barrel Y + 172, barrel Z
# Individual variants add their unique interior (z=9 to z=50)

# === MARKERS ===
summon marker ~0 ~1 ~30 {Tags:["heist.center"]}
summon marker ~0 ~1 ~55 {Tags:["heist.endzone"]}

# === FOUNDATION ===
fill ~-5 ~-1 ~-1 ~5 ~-1 ~61 minecraft:deepslate_bricks

# === FLOOR ===
fill ~-4 ~0 ~0 ~4 ~0 ~60 minecraft:polished_blackstone

# === OUTER WALLS ===
fill ~-5 ~0 ~-1 ~-5 ~6 ~61 minecraft:polished_blackstone_bricks
fill ~5 ~0 ~-1 ~5 ~6 ~61 minecraft:polished_blackstone_bricks
fill ~-5 ~0 ~-1 ~5 ~6 ~-1 minecraft:polished_blackstone_bricks
fill ~-5 ~0 ~61 ~5 ~6 ~61 minecraft:polished_blackstone_bricks

# === CEILING ===
fill ~-4 ~6 ~0 ~4 ~6 ~60 minecraft:polished_blackstone_bricks

# === HOLLOW INTERIOR ===
fill ~-4 ~1 ~0 ~4 ~5 ~60 minecraft:air

# === START SAFE ROOM (z=0 to z=8) ===
setblock ~0 ~0 ~1 minecraft:sea_lantern
setblock ~-3 ~0 ~4 minecraft:sea_lantern
setblock ~3 ~0 ~4 minecraft:sea_lantern
fill ~-4 ~1 ~8 ~4 ~4 ~8 minecraft:barrier
fill ~-5 ~3 ~0 ~-5 ~3 ~7 minecraft:red_wool
fill ~5 ~3 ~0 ~5 ~3 ~7 minecraft:red_wool

# === END SAFE ROOM (z=51 to z=60) ===
fill ~-4 ~1 ~51 ~-2 ~4 ~51 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~51 ~4 ~4 ~51 minecraft:polished_blackstone_bricks
setblock ~0 ~0 ~54 minecraft:sea_lantern
setblock ~-3 ~0 ~57 minecraft:sea_lantern
setblock ~3 ~0 ~57 minecraft:sea_lantern
setblock ~0 ~1 ~55 minecraft:gold_block
setblock ~-1 ~0 ~55 minecraft:raw_gold_block
setblock ~1 ~0 ~55 minecraft:raw_gold_block
