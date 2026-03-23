# Nightmare — Phase 3 Specifics
# Called as the boss entity, at boss position

# Sculk shriek entrance VFX
particle minecraft:sculk_soul ~ ~1 ~ 5 2 5 0.05 50
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2.0 0.5

# Spawn 2 more phantom minions
summon phantom ~3 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon phantom ~-3 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Fire resistance for survivability
effect give @s fire_resistance infinite 0 true
