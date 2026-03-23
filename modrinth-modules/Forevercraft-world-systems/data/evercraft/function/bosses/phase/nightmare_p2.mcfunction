# Nightmare — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 phantom minions
summon phantom ~2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon phantom ~-2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon phantom ~ ~5 ~2 {Tags:["wb.minion"],PersistenceRequired:1b}
