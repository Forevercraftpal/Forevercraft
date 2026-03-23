# Black Market Heist — Variant 4: Sniper Alley
# Long open corridor with cover pillars, strays at the far end
# Runs positioned at arena base. Interior fills z=9 to z=50.

# === COVER PILLARS (scattered 2x1 blackstone pillars) ===
# Row 1 (z=12)
fill ~-3 ~1 ~12 ~-3 ~3 ~12 minecraft:polished_blackstone_bricks
fill ~1 ~1 ~12 ~1 ~3 ~12 minecraft:polished_blackstone_bricks

# Row 2 (z=17)
fill ~-1 ~1 ~17 ~-1 ~3 ~17 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~17 ~3 ~3 ~17 minecraft:polished_blackstone_bricks

# Row 3 (z=22)
fill ~-4 ~1 ~22 ~-4 ~3 ~22 minecraft:polished_blackstone_bricks
fill ~0 ~1 ~22 ~0 ~3 ~22 minecraft:polished_blackstone_bricks

# Row 4 (z=27) — wider gap, more exposed
fill ~-2 ~1 ~27 ~-2 ~3 ~27 minecraft:polished_blackstone_bricks
fill ~3 ~1 ~27 ~3 ~3 ~27 minecraft:polished_blackstone_bricks

# Row 5 (z=32)
fill ~-3 ~1 ~32 ~-3 ~3 ~32 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~32 ~2 ~3 ~32 minecraft:polished_blackstone_bricks

# Row 6 (z=37) — single pillar, very exposed
fill ~0 ~1 ~37 ~0 ~3 ~37 minecraft:polished_blackstone_bricks

# Row 7 (z=42) — last cover before snipers
fill ~-2 ~1 ~42 ~-2 ~3 ~42 minecraft:polished_blackstone_bricks
fill ~2 ~1 ~42 ~2 ~3 ~42 minecraft:polished_blackstone_bricks

# === SNIPER PLATFORM (z=46-50) — elevated wall with strays ===
# 3-high wall with viewing slits
fill ~-4 ~1 ~46 ~4 ~3 ~46 minecraft:polished_blackstone_bricks
# Slits at eye level (y=2)
setblock ~-3 ~2 ~46 minecraft:air
setblock ~-1 ~2 ~46 minecraft:air
setblock ~1 ~2 ~46 minecraft:air
setblock ~3 ~2 ~46 minecraft:air

# Elevated platform behind wall
fill ~-4 ~1 ~47 ~4 ~1 ~50 minecraft:polished_blackstone
fill ~-4 ~2 ~47 ~4 ~2 ~50 minecraft:polished_blackstone

# === STRAYS (8 snipers behind wall + 4 flankers) ===
# Behind wall on platform (shoot through slits)
summon minecraft:oak_boat ~-3 ~3 ~48 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-1 ~3 ~48 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~1 ~3 ~48 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~3 ~3 ~48 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Second row behind
summon minecraft:oak_boat ~-2 ~3 ~50 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~0 ~3 ~50 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~2 ~3 ~50 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Side flankers (shoot from walls at z=20 and z=35)
summon minecraft:oak_boat ~-4 ~2 ~20 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~2 ~20 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~-4 ~2 ~35 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}
summon minecraft:oak_boat ~4 ~2 ~35 {Tags:["heist.boat"],Passengers:[{id:"minecraft:stray",Tags:["heist.hazard"],Silent:1b,PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:bow",count:1}}}]}

# Lighting — dim soul lanterns
setblock ~-4 ~0 ~10 minecraft:soul_lantern
setblock ~4 ~0 ~10 minecraft:soul_lantern
setblock ~0 ~0 ~25 minecraft:soul_lantern
setblock ~0 ~0 ~40 minecraft:soul_lantern
