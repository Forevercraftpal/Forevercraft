# Ender Architect — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 blaze minions
summon blaze ~3 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Ender Sentinel",color:"light_purple"}}
summon blaze ~-3 ~2 ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Ender Sentinel",color:"light_purple"}}

# Fortress shield VFX
particle minecraft:end_rod ~ ~2 ~ 8 3 8 0.08 60
particle minecraft:witch ~ ~1 ~ 5 2 5 0.1 40
playsound minecraft:entity.shulker.shoot master @a ~ ~ ~ 2.0 0.3

# Resistance II for fortress mode
effect give @s resistance infinite 1 true
