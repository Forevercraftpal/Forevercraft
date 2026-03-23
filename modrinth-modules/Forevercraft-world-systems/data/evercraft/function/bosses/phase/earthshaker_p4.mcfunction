# Earthshaker — Phase 4 Specifics
# Called as the boss entity, at boss position

# Massive ground pound
particle minecraft:explosion ~ ~0.5 ~ 8 0.3 8 0.2 30
particle minecraft:dust{color:[0.6,0.4,0.2],scale:3.0} ~ ~0.5 ~ 8 0.3 8 0.01 60
playsound minecraft:entity.iron_golem.death master @a ~ ~ ~ 2.0 0.2

# Spawn 2 iron golem minions
summon iron_golem ~4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Earth Guardian",color:"gold"}}
summon iron_golem ~-4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,CustomName:{text:"Earth Guardian",color:"gold"}}

# Resistance II for ultimate defense
effect give @s resistance infinite 1 true
