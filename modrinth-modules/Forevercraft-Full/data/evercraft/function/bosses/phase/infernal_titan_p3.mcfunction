# Infernal Titan — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 blaze minions
summon blaze ~3 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b}
summon blaze ~-3 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b}

# Inferno VFX
particle minecraft:flame ~ ~1 ~ 5 2 5 0.1 50
particle minecraft:lava ~ ~0.5 ~ 3 0.5 3 0.1 30
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2.0 0.3
