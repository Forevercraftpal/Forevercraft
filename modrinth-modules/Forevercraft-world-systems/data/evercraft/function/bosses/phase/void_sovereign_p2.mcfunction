# Void Sovereign — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 shulker minions
summon shulker ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon shulker ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon shulker ~ ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b}

# Void VFX
particle minecraft:reverse_portal ~ ~1 ~ 3 1 3 0.1 30
