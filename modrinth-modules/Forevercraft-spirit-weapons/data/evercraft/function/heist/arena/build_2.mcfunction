# Black Market Heist — Variant 2: Parkour Platforms
# Floating platforms over void, strays on side towers
# Runs positioned at arena base. Interior fills z=9 to z=50.

# Remove the floor in the parkour section (fall = fail via damage)
fill ~-4 ~0 ~9 ~4 ~0 ~50 minecraft:air

# === PLATFORM CHAIN (z=9 to z=50) ===
# Platform 1: entry (3x3)
fill ~-1 ~0 ~9 ~1 ~0 ~11 minecraft:polished_blackstone

# Platform 2: slight left
fill ~-3 ~0 ~14 ~-1 ~0 ~15 minecraft:polished_blackstone

# Platform 3: right jump
fill ~1 ~0 ~18 ~3 ~0 ~19 minecraft:polished_blackstone

# Platform 4: center high (1 block up)
fill ~-1 ~1 ~22 ~1 ~1 ~23 minecraft:polished_blackstone
setblock ~0 ~0 ~22 minecraft:polished_blackstone

# Platform 5: far left
fill ~-4 ~0 ~26 ~-2 ~0 ~27 minecraft:polished_blackstone

# Platform 6: center
fill ~-1 ~0 ~30 ~1 ~0 ~31 minecraft:polished_blackstone

# Platform 7: far right
fill ~2 ~0 ~34 ~4 ~0 ~35 minecraft:polished_blackstone

# Platform 8: left narrow (2 wide)
fill ~-3 ~0 ~38 ~-2 ~0 ~39 minecraft:polished_blackstone

# Platform 9: center narrow
fill ~0 ~0 ~42 ~1 ~0 ~43 minecraft:polished_blackstone

# Platform 10: right
fill ~2 ~0 ~46 ~4 ~0 ~47 minecraft:polished_blackstone

# Platform 11: final approach (wide, connects to end room)
fill ~-2 ~0 ~49 ~2 ~0 ~50 minecraft:polished_blackstone

# === STRAY TOWERS (elevated, shoot across gaps) ===
# Tower 1: left side z=16
fill ~-4 ~1 ~16 ~-4 ~3 ~16 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~-4 ~4 ~16 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Tower 2: right side z=21
fill ~4 ~1 ~21 ~4 ~3 ~21 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~4 ~4 ~21 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Tower 3: left side z=28
fill ~-4 ~1 ~28 ~-4 ~3 ~28 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~-4 ~4 ~28 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Tower 4: right side z=33
fill ~4 ~1 ~33 ~4 ~3 ~33 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~4 ~4 ~33 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Tower 5: left side z=40
fill ~-4 ~1 ~40 ~-4 ~3 ~40 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~-4 ~4 ~40 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Tower 6: right side z=45
fill ~4 ~1 ~45 ~4 ~3 ~45 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~4 ~4 ~45 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Atmospheric lighting on towers
setblock ~-4 ~3 ~16 minecraft:soul_lantern
setblock ~4 ~3 ~21 minecraft:soul_lantern
setblock ~-4 ~3 ~28 minecraft:soul_lantern
setblock ~4 ~3 ~33 minecraft:soul_lantern
setblock ~-4 ~3 ~40 minecraft:soul_lantern
setblock ~4 ~3 ~45 minecraft:soul_lantern
