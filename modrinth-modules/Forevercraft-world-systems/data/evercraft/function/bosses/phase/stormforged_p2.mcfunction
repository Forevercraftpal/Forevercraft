# Stormforged — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 stray minions
summon stray ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow"}}}
summon stray ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow"}}}
summon stray ~ ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow"}}}
