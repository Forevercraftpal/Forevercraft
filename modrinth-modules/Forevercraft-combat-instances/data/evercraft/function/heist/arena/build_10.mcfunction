# Black Market Heist — Variant 10: Frost Run
# Ice floor (slippery movement), strays, and packed ice obstacles
# Runs positioned at arena base. Interior fills z=9 to z=50.

# === ICE FLOOR (slippery!) ===
fill ~-4 ~0 ~9 ~4 ~0 ~50 minecraft:blue_ice

# === PACKED ICE OBSTACLES (force weaving while sliding) ===
# Staggered ice walls — must navigate around them while slipping

# Wall 1 (z=12): blocks right side
fill ~0 ~1 ~12 ~4 ~3 ~12 minecraft:packed_ice

# Wall 2 (z=17): blocks left side
fill ~-4 ~1 ~17 ~0 ~3 ~17 minecraft:packed_ice

# Wall 3 (z=22): blocks center-right
fill ~-1 ~1 ~22 ~4 ~3 ~22 minecraft:packed_ice

# Wall 4 (z=27): blocks center-left
fill ~-4 ~1 ~27 ~1 ~3 ~27 minecraft:packed_ice

# Wall 5 (z=32): narrow gap center
fill ~-4 ~1 ~32 ~-1 ~3 ~32 minecraft:packed_ice
fill ~1 ~1 ~32 ~4 ~3 ~32 minecraft:packed_ice

# Wall 6 (z=37): blocks left
fill ~-4 ~1 ~37 ~-1 ~3 ~37 minecraft:packed_ice

# Wall 7 (z=41): blocks right
fill ~1 ~1 ~41 ~4 ~3 ~41 minecraft:packed_ice

# Wall 8 (z=46): narrow gap left side
fill ~-2 ~1 ~46 ~4 ~3 ~46 minecraft:packed_ice

# Scattered ice pillars for extra obstruction
fill ~-3 ~1 ~14 ~-3 ~2 ~14 minecraft:packed_ice
fill ~3 ~1 ~20 ~3 ~2 ~20 minecraft:packed_ice
fill ~-2 ~1 ~25 ~-2 ~2 ~25 minecraft:packed_ice
fill ~2 ~1 ~29 ~2 ~2 ~29 minecraft:packed_ice
fill ~-3 ~1 ~35 ~-3 ~2 ~35 minecraft:packed_ice
fill ~3 ~1 ~39 ~3 ~2 ~39 minecraft:packed_ice
fill ~-3 ~1 ~44 ~-3 ~2 ~44 minecraft:packed_ice
fill ~2 ~1 ~48 ~2 ~2 ~48 minecraft:packed_ice

# === STRAYS (12 total, positioned behind ice walls) ===
# Behind wall 1
summon minecraft:oak_boat ~-3 ~1 ~13 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Behind wall 2
summon minecraft:oak_boat ~3 ~1 ~18 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Behind wall 3
summon minecraft:oak_boat ~-3 ~1 ~23 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Behind wall 4
summon minecraft:oak_boat ~3 ~1 ~28 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Flanking wall 5
summon minecraft:oak_boat ~-4 ~1 ~33 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~33 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Behind wall 6
summon minecraft:oak_boat ~2 ~1 ~38 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Behind wall 7
summon minecraft:oak_boat ~-2 ~1 ~42 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Behind wall 8
summon minecraft:oak_boat ~-4 ~1 ~47 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Elevated snipers (3 on ice towers)
fill ~-4 ~1 ~15 ~-4 ~3 ~15 minecraft:packed_ice
summon minecraft:oak_boat ~-4 ~4 ~15 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~1 ~30 ~4 ~3 ~30 minecraft:packed_ice
summon minecraft:oak_boat ~4 ~4 ~30 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-4 ~1 ~43 ~-4 ~3 ~43 minecraft:packed_ice
summon minecraft:oak_boat ~-4 ~4 ~43 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Cold atmosphere lighting
setblock ~0 ~5 ~10 minecraft:sea_lantern
setblock ~0 ~5 ~25 minecraft:sea_lantern
setblock ~0 ~5 ~40 minecraft:sea_lantern
setblock ~0 ~0 ~50 minecraft:sea_lantern
