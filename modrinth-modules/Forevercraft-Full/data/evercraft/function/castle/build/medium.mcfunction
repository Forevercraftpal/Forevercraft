# Infinite Castle — Build Medium Room (31×31, deepslate with pillars)
# Run positioned at arena base (172 blocks above start point)

# Summon center marker
summon marker ~ ~1 ~ {Tags:["ic.center","ec.entity"]}

# Foundation
fill ~-15 ~-1 ~-15 ~15 ~-1 ~15 minecraft:deepslate_bricks

# Floor
fill ~-15 ~ ~-15 ~15 ~ ~15 minecraft:deepslate_tiles
fill ~-5 ~ ~-5 ~5 ~ ~5 minecraft:polished_deepslate

# Walls (7 blocks high)
fill ~-15 ~1 ~-15 ~15 ~7 ~-15 minecraft:deepslate_bricks
fill ~-15 ~1 ~15 ~15 ~7 ~15 minecraft:deepslate_bricks
fill ~15 ~1 ~-15 ~15 ~7 ~15 minecraft:deepslate_bricks
fill ~-15 ~1 ~-15 ~-15 ~7 ~15 minecraft:deepslate_bricks

# Hollow interior
fill ~-14 ~1 ~-14 ~14 ~14 ~14 minecraft:air

# Ceiling
fill ~-15 ~8 ~-15 ~15 ~8 ~15 minecraft:barrier

# Pillars (4 pillars for cover)
fill ~-6 ~1 ~-6 ~-5 ~5 ~-5 minecraft:deepslate_brick_wall
fill ~5 ~1 ~-6 ~6 ~5 ~-5 minecraft:deepslate_brick_wall
fill ~-6 ~1 ~5 ~-5 ~5 ~6 minecraft:deepslate_brick_wall
fill ~5 ~1 ~5 ~6 ~5 ~6 minecraft:deepslate_brick_wall

# Lighting — sea lanterns on floor
setblock ~-12 ~ ~-12 minecraft:sea_lantern
setblock ~12 ~ ~-12 minecraft:sea_lantern
setblock ~-12 ~ ~12 minecraft:sea_lantern
setblock ~12 ~ ~12 minecraft:sea_lantern
setblock ~0 ~ ~-12 minecraft:sea_lantern
setblock ~0 ~ ~12 minecraft:sea_lantern

# Soul lanterns on walls
setblock ~0 ~5 ~-15 minecraft:soul_lantern
setblock ~0 ~5 ~15 minecraft:soul_lantern
setblock ~-15 ~5 ~0 minecraft:soul_lantern
setblock ~15 ~5 ~0 minecraft:soul_lantern
