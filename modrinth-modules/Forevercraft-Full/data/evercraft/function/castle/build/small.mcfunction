# Infinite Castle — Build Small Room (21×21, stone brick)
# Run positioned at arena base (172 blocks above start point)

# Summon center marker
summon marker ~ ~1 ~ {Tags:["ic.center","ec.entity"]}

# Foundation
fill ~-10 ~-1 ~-10 ~10 ~-1 ~10 minecraft:stone_bricks

# Floor
fill ~-10 ~ ~-10 ~10 ~ ~10 minecraft:stone_brick_stairs[half=top,facing=north,waterlogged=false]
fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:mossy_stone_bricks

# Walls (6 blocks high)
fill ~-10 ~1 ~-10 ~10 ~6 ~-10 minecraft:stone_bricks
fill ~-10 ~1 ~10 ~10 ~6 ~10 minecraft:stone_bricks
fill ~10 ~1 ~-10 ~10 ~6 ~10 minecraft:stone_bricks
fill ~-10 ~1 ~-10 ~-10 ~6 ~10 minecraft:stone_bricks

# Hollow interior
fill ~-9 ~1 ~-9 ~9 ~12 ~9 minecraft:air

# Ceiling (barrier to keep mobs in)
fill ~-10 ~7 ~-10 ~10 ~7 ~10 minecraft:barrier

# Lighting — sea lanterns at corners
setblock ~-8 ~ ~-8 minecraft:sea_lantern
setblock ~8 ~ ~-8 minecraft:sea_lantern
setblock ~-8 ~ ~8 minecraft:sea_lantern
setblock ~8 ~ ~8 minecraft:sea_lantern

# Soul lanterns on walls
setblock ~0 ~4 ~-10 minecraft:soul_lantern
setblock ~0 ~4 ~10 minecraft:soul_lantern
setblock ~-10 ~4 ~0 minecraft:soul_lantern
setblock ~10 ~4 ~0 minecraft:soul_lantern
