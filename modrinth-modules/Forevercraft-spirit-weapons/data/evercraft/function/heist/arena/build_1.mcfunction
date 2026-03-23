# Black Market Heist — Variant 1: Arrow Corridor
# Classic stray gauntlet: narrow corridor → zigzag → open pillars
# Runs positioned at arena base. Interior fills z=9 to z=50.

# ============================================================
# SECTION A: ARROW CORRIDOR (z=9 to z=20)
# ============================================================
# Narrow the path to 3 blocks wide with blackstone walls
fill ~-3 ~1 ~9 ~-3 ~4 ~20 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~9 ~3 ~4 ~20 minecraft:polished_blackstone_bricks

# Alcoves on left side (z=11, z=14, z=17)
setblock ~-3 ~1 ~11 minecraft:iron_bars[north=true,south=true]
setblock ~-3 ~2 ~11 minecraft:iron_bars[north=true,south=true]
setblock ~-3 ~1 ~14 minecraft:iron_bars[north=true,south=true]
setblock ~-3 ~2 ~14 minecraft:iron_bars[north=true,south=true]
setblock ~-3 ~1 ~17 minecraft:iron_bars[north=true,south=true]
setblock ~-3 ~2 ~17 minecraft:iron_bars[north=true,south=true]

# Alcoves on right side (z=12, z=15, z=18)
setblock ~3 ~1 ~12 minecraft:iron_bars[north=true,south=true]
setblock ~3 ~2 ~12 minecraft:iron_bars[north=true,south=true]
setblock ~3 ~1 ~15 minecraft:iron_bars[north=true,south=true]
setblock ~3 ~2 ~15 minecraft:iron_bars[north=true,south=true]
setblock ~3 ~1 ~18 minecraft:iron_bars[north=true,south=true]
setblock ~3 ~2 ~18 minecraft:iron_bars[north=true,south=true]

# Floor lighting
setblock ~0 ~0 ~10 minecraft:sea_lantern
setblock ~0 ~0 ~15 minecraft:sea_lantern
setblock ~0 ~0 ~20 minecraft:sea_lantern

# ============================================================
# SECTION B: ZIGZAG (z=21 to z=35)
# ============================================================
# First jog: path goes LEFT
fill ~1 ~1 ~21 ~4 ~4 ~27 minecraft:polished_blackstone_bricks
fill ~-2 ~1 ~21 ~0 ~4 ~21 minecraft:air

# Second jog: path goes RIGHT
fill ~-4 ~1 ~28 ~-1 ~4 ~35 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~27 ~1 ~4 ~28 minecraft:air

# Corner alcoves
setblock ~0 ~1 ~24 minecraft:iron_bars[east=true,west=true]
setblock ~0 ~2 ~24 minecraft:iron_bars[east=true,west=true]
setblock ~-1 ~1 ~27 minecraft:iron_bars[north=true,south=true]
setblock ~-1 ~2 ~27 minecraft:iron_bars[north=true,south=true]
setblock ~0 ~1 ~31 minecraft:iron_bars[east=true,west=true]
setblock ~0 ~2 ~31 minecraft:iron_bars[east=true,west=true]
setblock ~0 ~1 ~35 minecraft:iron_bars[north=true,south=true]
setblock ~0 ~2 ~35 minecraft:iron_bars[north=true,south=true]

# Lighting
setblock ~-2 ~0 ~23 minecraft:sea_lantern
setblock ~2 ~0 ~32 minecraft:sea_lantern

# ============================================================
# SECTION C: OPEN GAUNTLET (z=36 to z=50)
# ============================================================
# Pillars (2 blocks high)
fill ~-3 ~1 ~38 ~-3 ~2 ~38 minecraft:polished_blackstone
fill ~3 ~1 ~39 ~3 ~2 ~39 minecraft:polished_blackstone
fill ~0 ~1 ~42 ~0 ~2 ~42 minecraft:polished_blackstone
fill ~-3 ~1 ~45 ~-3 ~2 ~45 minecraft:polished_blackstone
fill ~3 ~1 ~44 ~3 ~2 ~44 minecraft:polished_blackstone
fill ~0 ~1 ~48 ~0 ~2 ~48 minecraft:polished_blackstone

# Soul sand patches
setblock ~-1 ~0 ~40 minecraft:soul_sand
setblock ~0 ~0 ~40 minecraft:soul_sand
setblock ~1 ~0 ~40 minecraft:soul_sand
setblock ~-2 ~0 ~43 minecraft:soul_sand
setblock ~-1 ~0 ~43 minecraft:soul_sand
setblock ~1 ~0 ~46 minecraft:soul_sand
setblock ~2 ~0 ~46 minecraft:soul_sand
setblock ~0 ~0 ~46 minecraft:soul_sand

# Minimal lighting
setblock ~-4 ~0 ~37 minecraft:soul_lantern
setblock ~4 ~0 ~37 minecraft:soul_lantern
setblock ~0 ~0 ~50 minecraft:sea_lantern

# ============================================================
# HAZARDS: 16 strays in boats
# ============================================================
# Arrow Corridor — left alcoves
summon minecraft:oak_boat ~-4 ~1 ~11 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~14 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~17 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
# Arrow Corridor — right alcoves
summon minecraft:oak_boat ~4 ~1 ~12 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~15 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~18 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
# Zigzag corners
summon minecraft:oak_boat ~1 ~1 ~24 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-2 ~1 ~27 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-1 ~1 ~31 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~1 ~1 ~35 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
# Open Gauntlet — pillars
summon minecraft:oak_boat ~-3 ~3 ~38 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~3 ~3 ~39 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~0 ~3 ~42 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-3 ~3 ~45 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~3 ~3 ~44 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~0 ~3 ~48 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
