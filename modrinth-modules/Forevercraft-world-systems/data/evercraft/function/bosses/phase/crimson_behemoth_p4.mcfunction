# Crimson Behemoth — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 hoglin minions
summon hoglin ~4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,IsImmuneToZombification:1b,CustomName:{text:"Crimson Brute",color:"dark_red"}}
summon hoglin ~-4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,IsImmuneToZombification:1b,CustomName:{text:"Crimson Brute",color:"dark_red"}}

# Blood frenzy VFX
particle minecraft:crimson_spore ~ ~1 ~ 8 3 8 0.15 60
particle minecraft:dust{color:[0.8,0.1,0.1],scale:2.0} ~ ~1 ~ 5 2 5 0.05 30
playsound minecraft:entity.hoglin.angry master @a ~ ~ ~ 2.0 0.2

# Speed III for ultimate frenzy
effect give @s speed infinite 3 true
