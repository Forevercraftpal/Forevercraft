# Infinite Castle — Build Large Room (41×41, blackstone with platforms)
# Run positioned at arena base (172 blocks above start point)

# Summon center marker
summon marker ~ ~1 ~ {Tags:["ic.center","ec.entity"]}

# Foundation
fill ~-20 ~-1 ~-20 ~20 ~-1 ~20 minecraft:polished_blackstone_bricks

# Floor
fill ~-20 ~ ~-20 ~20 ~ ~20 minecraft:polished_blackstone
fill ~-6 ~ ~-6 ~6 ~ ~6 minecraft:gilded_blackstone

# Walls (8 blocks high)
fill ~-20 ~1 ~-20 ~20 ~8 ~-20 minecraft:polished_blackstone_bricks
fill ~-20 ~1 ~20 ~20 ~8 ~20 minecraft:polished_blackstone_bricks
fill ~20 ~1 ~-20 ~20 ~8 ~20 minecraft:polished_blackstone_bricks
fill ~-20 ~1 ~-20 ~-20 ~8 ~20 minecraft:polished_blackstone_bricks

# Hollow interior
fill ~-19 ~1 ~-19 ~19 ~16 ~19 minecraft:air

# Ceiling
fill ~-20 ~9 ~-20 ~20 ~9 ~20 minecraft:barrier

# Raised platforms (4 corners, 2 blocks high)
fill ~-16 ~1 ~-16 ~-12 ~2 ~-12 minecraft:polished_blackstone_bricks
fill ~12 ~1 ~-16 ~16 ~2 ~-12 minecraft:polished_blackstone_bricks
fill ~-16 ~1 ~12 ~-12 ~2 ~16 minecraft:polished_blackstone_bricks
fill ~12 ~1 ~12 ~16 ~2 ~16 minecraft:polished_blackstone_bricks

# Center pillar ring (8 pillars)
fill ~-8 ~1 ~0 ~-7 ~6 ~0 minecraft:polished_blackstone_brick_wall
fill ~7 ~1 ~0 ~8 ~6 ~0 minecraft:polished_blackstone_brick_wall
fill ~0 ~1 ~-8 ~0 ~6 ~-7 minecraft:polished_blackstone_brick_wall
fill ~0 ~1 ~7 ~0 ~6 ~8 minecraft:polished_blackstone_brick_wall

# Lighting — sea lanterns
setblock ~-16 ~ ~-16 minecraft:sea_lantern
setblock ~16 ~ ~-16 minecraft:sea_lantern
setblock ~-16 ~ ~16 minecraft:sea_lantern
setblock ~16 ~ ~16 minecraft:sea_lantern
setblock ~0 ~ ~-16 minecraft:sea_lantern
setblock ~0 ~ ~16 minecraft:sea_lantern
setblock ~-16 ~ ~0 minecraft:sea_lantern
setblock ~16 ~ ~0 minecraft:sea_lantern

# Gilded lighting in center
setblock ~-4 ~ ~-4 minecraft:shroomlight
setblock ~4 ~ ~-4 minecraft:shroomlight
setblock ~-4 ~ ~4 minecraft:shroomlight
setblock ~4 ~ ~4 minecraft:shroomlight

# Soul lanterns on walls
setblock ~-8 ~6 ~-20 minecraft:soul_lantern
setblock ~8 ~6 ~-20 minecraft:soul_lantern
setblock ~-8 ~6 ~20 minecraft:soul_lantern
setblock ~8 ~6 ~20 minecraft:soul_lantern
setblock ~-20 ~6 ~-8 minecraft:soul_lantern
setblock ~-20 ~6 ~8 minecraft:soul_lantern
setblock ~20 ~6 ~-8 minecraft:soul_lantern
setblock ~20 ~6 ~8 minecraft:soul_lantern
