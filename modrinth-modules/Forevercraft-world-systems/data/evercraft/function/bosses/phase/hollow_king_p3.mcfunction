# Hollow King — Phase 3 Specifics
# Called as the boss entity, at boss position

# Spawn 2 phantom minions
summon phantom ~2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Hollow Phantom",color:"dark_gray"}}
summon phantom ~-2 ~5 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Hollow Phantom",color:"dark_gray"}}

# Give boss fire resistance for Phase 3 (more dangerous)
effect give @s fire_resistance infinite 0 true
