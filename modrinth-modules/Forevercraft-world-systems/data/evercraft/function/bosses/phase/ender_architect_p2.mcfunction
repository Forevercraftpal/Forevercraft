# Ender Architect — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 shulker minions
summon shulker ~3 ~1 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon shulker ~-3 ~1 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon shulker ~ ~1 ~3 {Tags:["wb.minion"],PersistenceRequired:1b}

# Architect VFX
particle minecraft:end_rod ~ ~2 ~ 3 1 3 0.05 30
