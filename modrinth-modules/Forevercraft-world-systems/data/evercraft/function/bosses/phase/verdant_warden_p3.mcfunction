# Verdant Warden — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 witch minions
summon witch ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon witch ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Poison resistance for self
effect give @s poison infinite 0 true
