# Void Sovereign — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 vex minions
summon vex ~2 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Void Wraith",color:"dark_purple"}}
summon vex ~-2 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Void Wraith",color:"dark_purple"}}

# Void collapse VFX
particle minecraft:reverse_portal ~ ~1 ~ 8 3 8 0.15 80
particle minecraft:portal ~ ~1 ~ 5 2 5 1.5 60
particle minecraft:witch ~ ~1 ~ 3 2 3 0.1 30
playsound minecraft:entity.enderman.scream master @a ~ ~ ~ 2.0 0.3
