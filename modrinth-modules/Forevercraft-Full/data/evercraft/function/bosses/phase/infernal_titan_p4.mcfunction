# Infernal Titan — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 piglin brute minions
summon piglin_brute ~4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:golden_axe"}},CustomName:{text:"Infernal Guard",color:"red"}}
summon piglin_brute ~-4 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,IsImmuneToZombification:1b,equipment:{mainhand:{id:"minecraft:golden_axe"}},CustomName:{text:"Infernal Guard",color:"red"}}

# Inferno eruption VFX
particle minecraft:flame ~ ~1 ~ 8 3 8 0.15 80
particle minecraft:lava ~ ~0.5 ~ 5 1 5 0.1 40
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2.0 0.2
