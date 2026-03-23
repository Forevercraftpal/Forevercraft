# Black Market Heist — Variant 8: Pillar Forest
# Dense 1x1 pillars at varying heights, strays hidden between them
# Runs positioned at arena base. Interior fills z=9 to z=50.

# === PILLAR FIELD (random heights 2-4, dense coverage) ===
# Row z=10-11
fill ~-3 ~1 ~10 ~-3 ~3 ~10 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~10 ~-1 ~4 ~10 minecraft:polished_blackstone_bricks
fill ~1 ~1 ~11 ~1 ~2 ~11 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~10 ~3 ~3 ~10 minecraft:polished_blackstone_bricks

# Row z=13-14
fill ~-4 ~1 ~13 ~-4 ~4 ~13 minecraft:polished_blackstone_bricks
fill ~-2 ~1 ~14 ~-2 ~2 ~14 minecraft:polished_blackstone_bricks
fill ~0 ~1 ~13 ~0 ~3 ~13 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~14 ~2 ~4 ~14 minecraft:polished_blackstone_bricks
fill ~4 ~1 ~13 ~4 ~2 ~13 minecraft:polished_blackstone_bricks

# Row z=17-18
fill ~-3 ~1 ~17 ~-3 ~2 ~17 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~18 ~-1 ~4 ~18 minecraft:polished_blackstone_bricks
fill ~1 ~1 ~17 ~1 ~3 ~17 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~18 ~3 ~2 ~18 minecraft:polished_blackstone_bricks

# Row z=21-22
fill ~-4 ~1 ~21 ~-4 ~3 ~21 minecraft:polished_blackstone_bricks
fill ~-2 ~1 ~22 ~-2 ~4 ~22 minecraft:polished_blackstone_bricks
fill ~0 ~1 ~21 ~0 ~2 ~21 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~22 ~2 ~3 ~22 minecraft:polished_blackstone_bricks
fill ~4 ~1 ~21 ~4 ~4 ~21 minecraft:polished_blackstone_bricks

# Row z=25-26
fill ~-3 ~1 ~25 ~-3 ~4 ~25 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~26 ~-1 ~2 ~26 minecraft:polished_blackstone_bricks
fill ~1 ~1 ~25 ~1 ~3 ~25 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~26 ~3 ~4 ~26 minecraft:polished_blackstone_bricks

# Row z=29-30
fill ~-4 ~1 ~29 ~-4 ~2 ~29 minecraft:polished_blackstone_bricks
fill ~-2 ~1 ~30 ~-2 ~3 ~30 minecraft:polished_blackstone_bricks
fill ~0 ~1 ~29 ~0 ~4 ~29 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~30 ~2 ~2 ~30 minecraft:polished_blackstone_bricks
fill ~4 ~1 ~29 ~4 ~3 ~29 minecraft:polished_blackstone_bricks

# Row z=33-34
fill ~-3 ~1 ~33 ~-3 ~3 ~33 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~34 ~-1 ~4 ~34 minecraft:polished_blackstone_bricks
fill ~1 ~1 ~33 ~1 ~2 ~33 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~34 ~3 ~3 ~34 minecraft:polished_blackstone_bricks

# Row z=37-38
fill ~-4 ~1 ~37 ~-4 ~4 ~37 minecraft:polished_blackstone_bricks
fill ~-2 ~1 ~38 ~-2 ~2 ~38 minecraft:polished_blackstone_bricks
fill ~0 ~1 ~37 ~0 ~3 ~37 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~38 ~2 ~4 ~38 minecraft:polished_blackstone_bricks
fill ~4 ~1 ~37 ~4 ~2 ~37 minecraft:polished_blackstone_bricks

# Row z=41-42
fill ~-3 ~1 ~41 ~-3 ~2 ~41 minecraft:polished_blackstone_bricks
fill ~-1 ~1 ~42 ~-1 ~3 ~42 minecraft:polished_blackstone_bricks
fill ~1 ~1 ~41 ~1 ~4 ~41 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~42 ~3 ~2 ~42 minecraft:polished_blackstone_bricks

# Row z=45-46
fill ~-4 ~1 ~45 ~-4 ~3 ~45 minecraft:polished_blackstone_bricks
fill ~-2 ~1 ~46 ~-2 ~4 ~46 minecraft:polished_blackstone_bricks
fill ~0 ~1 ~45 ~0 ~2 ~45 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~46 ~2 ~3 ~46 minecraft:polished_blackstone_bricks
fill ~4 ~1 ~45 ~4 ~4 ~45 minecraft:polished_blackstone_bricks

# Row z=48-49
fill ~-3 ~1 ~48 ~-3 ~3 ~48 minecraft:polished_blackstone_bricks
fill ~1 ~1 ~49 ~1 ~2 ~49 minecraft:polished_blackstone_bricks

# === STRAYS hidden among pillars (12 total) ===
summon minecraft:oak_boat ~-2 ~1 ~11 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~2 ~1 ~15 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-1 ~1 ~20 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~3 ~1 ~23 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-3 ~1 ~27 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~1 ~1 ~31 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-2 ~1 ~35 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~3 ~1 ~39 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-1 ~1 ~43 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~2 ~1 ~44 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~1 ~47 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~0 ~1 ~50 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Very dim lighting (hard to see strays)
setblock ~0 ~5 ~15 minecraft:soul_lantern
setblock ~0 ~5 ~30 minecraft:soul_lantern
setblock ~0 ~5 ~45 minecraft:soul_lantern
