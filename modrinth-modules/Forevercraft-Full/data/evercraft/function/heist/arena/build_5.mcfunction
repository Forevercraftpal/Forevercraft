# Black Market Heist — Variant 5: Soul Sand Run
# Narrow paths over soul sand (slows movement), strays shooting from platforms
# Runs positioned at arena base. Interior fills z=9 to z=50.
# NOTE: magma_block was swapped out — it deals contact damage which triggers
# HurtTime:10s, causing instant fail from stepping on the floor.

# Replace floor with soul sand (slows movement but no damage/HurtTime)
fill ~-4 ~0 ~9 ~4 ~0 ~50 minecraft:soul_sand

# === SAFE PATH (2-wide polished blackstone weaving through) ===
# Segment 1: straight center entry (z=9-13)
fill ~-1 ~0 ~9 ~0 ~0 ~13 minecraft:polished_blackstone

# Segment 2: veer right (z=14-18)
fill ~1 ~0 ~14 ~2 ~0 ~18 minecraft:polished_blackstone

# Segment 3: cross back left (z=19-23)
fill ~-1 ~0 ~19 ~0 ~0 ~23 minecraft:polished_blackstone

# Segment 4: far left (z=24-28)
fill ~-3 ~0 ~24 ~-2 ~0 ~28 minecraft:polished_blackstone

# Segment 5: cross center (z=29-33)
fill ~0 ~0 ~29 ~1 ~0 ~33 minecraft:polished_blackstone

# Segment 6: far right (z=34-38)
fill ~2 ~0 ~34 ~3 ~0 ~38 minecraft:polished_blackstone

# Segment 7: back to center (z=39-43)
fill ~-1 ~0 ~39 ~0 ~0 ~43 minecraft:polished_blackstone

# Segment 8: left approach (z=44-47)
fill ~-2 ~0 ~44 ~-1 ~0 ~47 minecraft:polished_blackstone

# Segment 9: final straight (z=48-50)
fill ~-1 ~0 ~48 ~1 ~0 ~50 minecraft:polished_blackstone

# === LOW WALLS along path edges (trip hazard, force precision) ===
fill ~-2 ~1 ~14 ~-2 ~1 ~18 minecraft:polished_blackstone_wall
fill ~3 ~1 ~14 ~3 ~1 ~18 minecraft:polished_blackstone_wall
fill ~-4 ~1 ~24 ~-4 ~1 ~28 minecraft:polished_blackstone_wall
fill ~-1 ~1 ~24 ~-1 ~1 ~28 minecraft:polished_blackstone_wall
fill ~4 ~1 ~34 ~4 ~1 ~38 minecraft:polished_blackstone_wall
fill ~1 ~1 ~34 ~1 ~1 ~38 minecraft:polished_blackstone_wall

# === STRAYS on side platforms (10 total) ===
# Left wall platforms
fill ~-4 ~1 ~12 ~-4 ~1 ~12 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~2 ~12 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-4 ~1 ~22 ~-4 ~1 ~22 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~2 ~22 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-4 ~1 ~36 ~-4 ~1 ~36 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~2 ~36 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-4 ~1 ~46 ~-4 ~1 ~46 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~2 ~46 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Right wall platforms
fill ~4 ~1 ~16 ~4 ~1 ~16 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~2 ~16 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~1 ~26 ~4 ~1 ~26 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~2 ~26 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~1 ~32 ~4 ~1 ~32 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~2 ~32 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~1 ~40 ~4 ~1 ~40 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~2 ~40 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~1 ~48 ~4 ~1 ~48 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~2 ~48 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Center elevated sniper
fill ~0 ~1 ~42 ~0 ~3 ~42 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~0 ~4 ~42 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Dim lighting
setblock ~0 ~0 ~9 minecraft:soul_lantern
setblock ~0 ~5 ~30 minecraft:soul_lantern
setblock ~0 ~0 ~50 minecraft:soul_lantern
