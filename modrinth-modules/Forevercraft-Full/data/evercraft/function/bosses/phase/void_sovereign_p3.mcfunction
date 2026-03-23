# Void Sovereign — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 phantom minions (void phantoms)
summon phantom ~3 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon phantom ~-3 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Void collapse VFX
particle minecraft:reverse_portal ~ ~1 ~ 5 2 5 0.1 60
particle minecraft:portal ~ ~1 ~ 3 1 3 1.0 40
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 2.0 0.5
