# Crimson Behemoth — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 piglin_brute minions
summon piglin_brute ~4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:golden_axe"}}}
summon piglin_brute ~-4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:golden_axe"}}}
summon piglin_brute ~ ~ ~4 {Tags:["wb.minion"],PersistenceRequired:1b,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:golden_axe"}}}
