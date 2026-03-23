# Crimson Behemoth — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 zoglin minions
summon zoglin ~4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon zoglin ~-4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Frenzy VFX
particle minecraft:crimson_spore ~ ~1 ~ 5 2 5 0.1 50
playsound minecraft:entity.hoglin.angry master @a ~ ~ ~ 2.0 0.3

# Speed buff for frenzy phase
effect give @s speed infinite 2 true
