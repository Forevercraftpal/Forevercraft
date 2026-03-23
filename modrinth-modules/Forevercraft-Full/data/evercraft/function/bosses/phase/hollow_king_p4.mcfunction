# Hollow King — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 more phantom minions
summon phantom ~2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Hollow Phantom",color:"dark_gray"}}
summon phantom ~-2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Hollow Phantom",color:"dark_gray"}}

# Wither aura VFX
particle minecraft:sculk_soul ~ ~1 ~ 3 2 3 0.05 40
playsound minecraft:entity.warden.heartbeat master @a ~ ~ ~ 2.0 0.5
