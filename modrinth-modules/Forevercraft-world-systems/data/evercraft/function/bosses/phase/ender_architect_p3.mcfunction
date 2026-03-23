# Ender Architect — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 phantom minions
summon phantom ~3 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon phantom ~-3 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Fortress mode VFX
particle minecraft:end_rod ~ ~2 ~ 5 2 5 0.05 50
playsound minecraft:entity.shulker.hurt master @a ~ ~ ~ 2.0 0.5

# Resistance self-buff
effect give @s resistance infinite 0 true
