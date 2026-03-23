# Black Market Heist — Variant 6: The Descent
# Descending stairway, strays shooting from above and sides
# Runs positioned at arena base. Interior fills z=9 to z=50.

# === EXPAND VERTICAL SPACE (need room below for descent) ===
# Lower the floor progressively — dig down from base level
# Each tier drops 1 block over ~5z distance

# Tier 1 (z=9-14): floor level 0 (normal)
# Already air from common_shell

# Tier 2 (z=15-20): floor drops to -1
fill ~-4 ~0 ~15 ~4 ~0 ~20 minecraft:air
fill ~-4 ~-1 ~15 ~4 ~-1 ~20 minecraft:polished_blackstone

# Tier 3 (z=21-27): floor drops to -1, with ramp
fill ~-4 ~0 ~21 ~4 ~0 ~27 minecraft:air
fill ~-4 ~-1 ~21 ~4 ~-1 ~27 minecraft:polished_blackstone
# Stairs connecting tiers
setblock ~0 ~0 ~15 minecraft:polished_blackstone_stairs[facing=south]
setblock ~-1 ~0 ~15 minecraft:polished_blackstone_stairs[facing=south]
setblock ~1 ~0 ~15 minecraft:polished_blackstone_stairs[facing=south]

# Tier 4 (z=28-35): drops further, narrow catwalk
fill ~-4 ~-1 ~28 ~4 ~-1 ~35 minecraft:air
fill ~-4 ~0 ~28 ~4 ~0 ~35 minecraft:air
fill ~-1 ~-1 ~28 ~1 ~-1 ~35 minecraft:polished_blackstone
# Stairs at transition
setblock ~0 ~-1 ~28 minecraft:polished_blackstone_stairs[facing=south]
setblock ~-1 ~-1 ~28 minecraft:polished_blackstone_stairs[facing=south]
setblock ~1 ~-1 ~28 minecraft:polished_blackstone_stairs[facing=south]

# Tier 5 (z=36-43): back to wider, same depth
fill ~-3 ~-1 ~36 ~3 ~-1 ~43 minecraft:polished_blackstone

# Ramp back up (z=44-50) — ascend to floor 0 for end room
fill ~-3 ~-1 ~44 ~3 ~-1 ~46 minecraft:polished_blackstone
setblock ~0 ~0 ~47 minecraft:polished_blackstone_stairs[facing=south]
setblock ~-1 ~0 ~47 minecraft:polished_blackstone_stairs[facing=south]
setblock ~1 ~0 ~47 minecraft:polished_blackstone_stairs[facing=south]
fill ~-2 ~0 ~48 ~2 ~0 ~50 minecraft:polished_blackstone

# === ELEVATED STRAY POSITIONS (shooting downward) ===
# High platforms on walls
# Left wall elevated platforms
fill ~-4 ~2 ~12 ~-4 ~2 ~12 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~3 ~12 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-4 ~3 ~20 ~-4 ~3 ~20 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~4 ~20 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-4 ~3 ~30 ~-4 ~3 ~30 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~4 ~30 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~-4 ~2 ~40 ~-4 ~2 ~40 minecraft:polished_blackstone
summon minecraft:oak_boat ~-4 ~3 ~40 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Right wall elevated platforms
fill ~4 ~2 ~16 ~4 ~2 ~16 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~3 ~16 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~3 ~25 ~4 ~3 ~25 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~4 ~25 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~3 ~34 ~4 ~3 ~34 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~4 ~34 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~4 ~2 ~44 ~4 ~2 ~44 minecraft:polished_blackstone
summon minecraft:oak_boat ~4 ~3 ~44 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Center overhead strays (high up, shoot down at catwalk)
fill ~0 ~4 ~32 ~0 ~4 ~32 minecraft:polished_blackstone
summon minecraft:oak_boat ~0 ~5 ~32 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

fill ~0 ~4 ~38 ~0 ~4 ~38 minecraft:polished_blackstone
summon minecraft:oak_boat ~0 ~5 ~38 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Lighting — sparse soul lanterns
setblock ~0 ~5 ~10 minecraft:soul_lantern
setblock ~0 ~5 ~25 minecraft:soul_lantern
setblock ~0 ~5 ~40 minecraft:soul_lantern
setblock ~0 ~0 ~49 minecraft:sea_lantern
