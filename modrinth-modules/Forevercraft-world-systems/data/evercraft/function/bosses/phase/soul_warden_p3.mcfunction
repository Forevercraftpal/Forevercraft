# Soul Warden — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 phantom minions
summon phantom ~2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon phantom ~-2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Soul harvest entrance VFX
particle minecraft:soul ~ ~1 ~ 5 2 5 0.1 50
particle minecraft:soul_fire_flame ~ ~1 ~ 3 1 3 0.05 30
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1.0 0.8
