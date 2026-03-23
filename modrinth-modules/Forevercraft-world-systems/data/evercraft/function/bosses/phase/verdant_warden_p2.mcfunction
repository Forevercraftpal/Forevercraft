# Verdant Warden — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 cave_spider minions
summon cave_spider ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon cave_spider ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon cave_spider ~ ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b}
