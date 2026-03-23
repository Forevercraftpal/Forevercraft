# Dreaming Realm — Construct Arena
# Builds a 41x17x41 enclosed arena at Y=300 above the player
# Context: at @s = player's bed position (X/Z used as arena center)
# Block count per fill verified against 32,768 limit (lesson 8)

# === 1. OUTER SHELL (sealed black concrete box — void look) ===
# 41x17x41 = 28,577 blocks (under 32,768 limit)
fill ~-20 300 ~-20 ~20 316 ~20 black_concrete hollow

# Reinforce floor (ensure solid)
fill ~-20 300 ~-20 ~20 300 ~20 black_concrete

# === 2. CENTER PLATFORM (spawn point, purpur + amethyst ring) ===
fill ~-4 301 ~-4 ~4 301 ~4 amethyst_block
fill ~-2 301 ~-2 ~2 301 ~2 purpur_block
setblock ~ 301 ~ sea_lantern

# === 3. NW ISLAND — Memory Maze (end stone bricks) ===
fill ~-18 301 ~-18 ~-10 301 ~-10 end_stone_bricks
# Border walls (2 high)
fill ~-18 302 ~-18 ~-18 303 ~-10 end_stone_bricks
fill ~-10 302 ~-18 ~-10 303 ~-10 end_stone_bricks
fill ~-18 302 ~-18 ~-10 303 ~-18 end_stone_bricks
fill ~-18 302 ~-10 ~-10 303 ~-10 end_stone_bricks
# Entrance gap (south wall)
fill ~-15 302 ~-10 ~-13 303 ~-10 air
# Interior lighting
setblock ~-14 303 ~-14 sea_lantern
setblock ~-12 302 ~-12 shroomlight

# === 4. NE ISLAND — Dream Guardians Arena (deepslate) ===
fill ~10 301 ~-18 ~18 301 ~-10 deepslate_tiles
# Low arena walls (1 high)
fill ~10 302 ~-18 ~10 302 ~-10 deepslate_brick_wall
fill ~18 302 ~-18 ~18 302 ~-10 deepslate_brick_wall
fill ~10 302 ~-18 ~18 302 ~-18 deepslate_brick_wall
fill ~10 302 ~-10 ~18 302 ~-10 deepslate_brick_wall
# Entrance gap
fill ~13 302 ~-10 ~15 302 ~-10 air
# Lighting
setblock ~14 303 ~-14 soul_lantern
setblock ~12 302 ~-12 shroomlight

# === 5. SE AREA — Dreamer's Trial (parkour platforms) ===
# Landing platform
fill ~12 301 ~12 ~16 301 ~16 purpur_block
# Floating platforms at varying heights (3x3 each)
fill ~10 302 ~10 ~12 302 ~12 amethyst_block
fill ~15 303 ~10 ~17 303 ~12 end_stone_bricks
fill ~10 304 ~15 ~12 304 ~17 purpur_block
fill ~16 305 ~14 ~18 305 ~16 amethyst_block
fill ~11 306 ~13 ~13 306 ~15 end_stone_bricks
fill ~15 307 ~16 ~17 307 ~18 purpur_block
fill ~12 308 ~10 ~14 308 ~12 amethyst_block
fill ~16 309 ~12 ~18 309 ~14 end_stone_bricks
# Light on highest platform
setblock ~17 310 ~13 sea_lantern

# === 6. SW — Lore Chamber (sculk exterior, air interior) ===
fill ~-18 301 ~10 ~-10 305 ~18 sculk
fill ~-17 302 ~11 ~-11 304 ~17 air
# Entrance (gap in north wall)
fill ~-15 302 ~10 ~-13 303 ~10 air
# Interior lighting + end rod decorations
setblock ~-14 303 ~14 sea_lantern
setblock ~-14 302 ~12 end_rod
setblock ~-14 302 ~16 end_rod
setblock ~-12 302 ~14 end_rod
setblock ~-16 302 ~14 end_rod

# === 7. REWARD SHRINE (south center — amethyst + gold accents) ===
fill ~-3 301 ~14 ~3 305 ~18 amethyst_block
fill ~-2 302 ~15 ~2 304 ~17 air
# Entrance
fill ~-1 302 ~14 ~1 303 ~14 air
# Interior beacon light
setblock ~0 302 ~16 sea_lantern
setblock ~0 304 ~16 glowstone

# === 8. CONNECTING BRIDGES (purpur, 1 block wide, Y=301) ===
# North bridge (center to NW/NE)
fill ~0 301 ~-3 ~0 301 ~-9 purpur_block
# South bridge (center to SW/SE)
fill ~0 301 ~3 ~0 301 ~9 purpur_block
# South extension to reward shrine
fill ~0 301 ~10 ~0 301 ~13 purpur_block
# West bridge
fill ~-3 301 ~0 ~-9 301 ~0 purpur_block
# East bridge
fill ~3 301 ~0 ~9 301 ~0 purpur_block
# NW connector
fill ~-10 301 ~-1 ~-10 301 ~-9 purpur_block
# NE connector
fill ~10 301 ~-1 ~10 301 ~-9 purpur_block
# SW connector
fill ~-10 301 ~1 ~-10 301 ~9 purpur_block
# SE connector
fill ~10 301 ~1 ~10 301 ~9 purpur_block

# === 9. ATMOSPHERIC LIGHTING ===
# Corner lights (elevated)
setblock ~-19 305 ~-19 sea_lantern
setblock ~19 305 ~-19 sea_lantern
setblock ~-19 305 ~19 sea_lantern
setblock ~19 305 ~19 sea_lantern
# Central floating light
setblock ~0 308 ~0 sea_lantern
# Mid-height accent lights
setblock ~-10 306 ~0 shroomlight
setblock ~10 306 ~0 shroomlight
setblock ~0 306 ~-10 shroomlight
setblock ~0 306 ~10 shroomlight
# End rod vertical accents
setblock ~-5 302 ~-5 end_rod
setblock ~5 302 ~-5 end_rod
setblock ~-5 302 ~5 end_rod
setblock ~5 302 ~5 end_rod
setblock ~-8 303 ~-8 end_rod
setblock ~8 303 ~-8 end_rod
setblock ~-8 303 ~8 end_rod
setblock ~8 303 ~8 end_rod

# === 10. SUMMON CENTER MARKER (positional reference for destruction/fall catch) ===
summon marker ~ 302 ~ {Tags:["dr.center"]}
