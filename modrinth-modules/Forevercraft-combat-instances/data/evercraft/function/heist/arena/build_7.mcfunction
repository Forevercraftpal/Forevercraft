# Black Market Heist — Variant 7: Web Tangle
# Cobweb fields slowing movement, strays shooting through gaps
# Runs positioned at arena base. Interior fills z=9 to z=50.

# === COBWEB ZONES (slow movement, force player to weave around) ===
# Zone 1 (z=10-14): dense webs on left side
fill ~-4 ~1 ~10 ~-1 ~2 ~14 minecraft:cobweb
# Clear path on right
fill ~1 ~1 ~10 ~3 ~2 ~14 minecraft:air

# Zone 2 (z=17-21): webs on right side
fill ~1 ~1 ~17 ~4 ~2 ~21 minecraft:cobweb
# Clear path on left

# Zone 3 (z=24-28): center webs, paths on both edges
fill ~-2 ~1 ~24 ~2 ~2 ~28 minecraft:cobweb

# Zone 4 (z=31-35): scattered webs (checkerboard pattern)
setblock ~-3 ~1 ~31 minecraft:cobweb
setblock ~-1 ~1 ~32 minecraft:cobweb
setblock ~1 ~1 ~31 minecraft:cobweb
setblock ~3 ~1 ~32 minecraft:cobweb
setblock ~-2 ~1 ~33 minecraft:cobweb
setblock ~0 ~1 ~34 minecraft:cobweb
setblock ~2 ~1 ~33 minecraft:cobweb
setblock ~-3 ~1 ~35 minecraft:cobweb
setblock ~1 ~1 ~35 minecraft:cobweb
setblock ~3 ~1 ~34 minecraft:cobweb
# Second layer
setblock ~-3 ~2 ~31 minecraft:cobweb
setblock ~-1 ~2 ~32 minecraft:cobweb
setblock ~1 ~2 ~31 minecraft:cobweb
setblock ~3 ~2 ~32 minecraft:cobweb
setblock ~0 ~2 ~34 minecraft:cobweb

# Zone 5 (z=38-42): thick wall of webs with small gaps
fill ~-4 ~1 ~38 ~4 ~3 ~42 minecraft:cobweb
# Cut paths through
fill ~-3 ~1 ~38 ~-3 ~2 ~42 minecraft:air
fill ~1 ~1 ~38 ~1 ~2 ~42 minecraft:air

# Zone 6 (z=45-48): final web field
fill ~-2 ~1 ~45 ~2 ~2 ~48 minecraft:cobweb
# Narrow center gap
fill ~0 ~1 ~45 ~0 ~2 ~48 minecraft:air

# === STRAYS (positioned at web edges, shoot into webs) ===
# Wall-mounted strays (left wall)
summon minecraft:oak_boat ~-4 ~2 ~12 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~2 ~26 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~2 ~40 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Wall-mounted strays (right wall)
summon minecraft:oak_boat ~4 ~2 ~19 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~2 ~33 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~2 ~46 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Elevated center strays
fill ~0 ~1 ~15 ~0 ~3 ~15 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~0 ~4 ~15 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~0 ~1 ~29 ~0 ~3 ~29 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~0 ~4 ~29 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~0 ~1 ~43 ~0 ~3 ~43 minecraft:polished_blackstone_bricks
summon minecraft:oak_boat ~0 ~4 ~43 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Lighting
setblock ~-4 ~0 ~9 minecraft:soul_lantern
setblock ~4 ~0 ~22 minecraft:soul_lantern
setblock ~-4 ~0 ~36 minecraft:soul_lantern
setblock ~4 ~0 ~49 minecraft:soul_lantern
