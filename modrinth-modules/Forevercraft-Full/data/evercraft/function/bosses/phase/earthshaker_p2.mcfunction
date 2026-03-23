# Earthshaker — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 iron golem minions (smaller, default size)
summon iron_golem ~4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon iron_golem ~-4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon iron_golem ~ ~ ~4 {Tags:["wb.minion"],PersistenceRequired:1b}
