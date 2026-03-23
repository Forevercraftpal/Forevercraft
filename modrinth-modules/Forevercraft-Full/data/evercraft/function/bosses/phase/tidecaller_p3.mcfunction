# Tidecaller — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 elder guardian minions
summon elder_guardian ~4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon elder_guardian ~-4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Water breathing for self
effect give @s water_breathing infinite 0 true
