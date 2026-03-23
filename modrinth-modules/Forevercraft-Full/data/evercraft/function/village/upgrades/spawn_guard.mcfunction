# ============================================================
# Spawn Village Guardian (Iron Golem)
# Summons a tagged iron golem at the current position
# Run positioned at the spawn location
# ============================================================

# Summon iron golem with guardian tag and custom name
# PlayerCreated:0b so it acts like a natural village golem (targets hostile mobs)
summon iron_golem ~ ~ ~ {Tags:["VS.Guard"],CustomName:{text:"Village Guardian",color:"gold"},CustomNameVisible:0b}

# Particle effect at spawn point
particle minecraft:happy_villager ~ ~1 ~ 0.5 0.5 0.5 0.1 15
