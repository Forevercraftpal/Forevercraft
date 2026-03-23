# Tidecaller — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 guardian minions
summon guardian ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon guardian ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon guardian ~ ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b}
