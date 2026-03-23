# Black Market Heist — Variant 9: The Gauntlet (Hardest)
# Wide open, 20+ strays, minimal cover — brutal difficulty
# Runs positioned at arena base. Interior fills z=9 to z=50.

# === MINIMAL COVER (only 3 small walls) ===
# Cover 1: z=15 — small L-shaped wall
fill ~-1 ~1 ~15 ~1 ~3 ~15 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~15 ~-1 ~3 ~16 minecraft:polished_blackstone_bricks

# Cover 2: z=30 — single pillar
fill ~0 ~1 ~30 ~0 ~3 ~30 minecraft:polished_blackstone_bricks

# Cover 3: z=43 — small wall
fill ~-1 ~1 ~43 ~1 ~3 ~43 minecraft:polished_blackstone_bricks

# === STRAYS — 22 total, densely packed ===
# Left wall line (6 strays)
summon minecraft:oak_boat ~-4 ~1 ~11 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~18 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~25 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~32 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~39 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~46 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Right wall line (6 strays)
summon minecraft:oak_boat ~4 ~1 ~13 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~20 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~27 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~34 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~41 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~1 ~48 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Center strays (elevated, 6 on pillars)
fill ~-2 ~1 ~16 ~-2 ~2 ~16 minecraft:polished_blackstone
summon minecraft:oak_boat ~-2 ~3 ~16 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~2 ~1 ~22 ~2 ~2 ~22 minecraft:polished_blackstone
summon minecraft:oak_boat ~2 ~3 ~22 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-2 ~1 ~28 ~-2 ~2 ~28 minecraft:polished_blackstone
summon minecraft:oak_boat ~-2 ~3 ~28 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~2 ~1 ~36 ~2 ~2 ~36 minecraft:polished_blackstone
summon minecraft:oak_boat ~2 ~3 ~36 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# End zone guardians (4 strays at z=49-50)
summon minecraft:oak_boat ~-3 ~1 ~49 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-1 ~1 ~50 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~1 ~1 ~50 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~3 ~1 ~49 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Harsh red lighting (danger atmosphere)
setblock ~0 ~5 ~15 minecraft:redstone_lamp
setblock ~0 ~5 ~30 minecraft:redstone_lamp
setblock ~0 ~5 ~45 minecraft:redstone_lamp
# Power the lamps
setblock ~0 ~5 ~14 minecraft:redstone_block
setblock ~0 ~5 ~29 minecraft:redstone_block
setblock ~0 ~5 ~44 minecraft:redstone_block
