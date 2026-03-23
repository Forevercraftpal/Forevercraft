# Stormforged — Phase 4 Specifics
# Called as the boss entity, at boss position

# Massive lightning storm
summon lightning_bolt ~4 ~ ~
summon lightning_bolt ~-4 ~ ~
summon lightning_bolt ~ ~ ~4
summon lightning_bolt ~ ~ ~-4
summon lightning_bolt ~2 ~ ~2
summon lightning_bolt ~-2 ~ ~-2

# Spawn 2 skeleton minions
summon skeleton ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow"}},CustomName:{text:"Storm Archer",color:"aqua"}}
summon skeleton ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow"}},CustomName:{text:"Storm Archer",color:"aqua"}}

# Storm VFX
particle minecraft:electric_spark ~ ~2 ~ 5 3 5 0.1 60
playsound minecraft:entity.lightning_bolt.impact master @a ~ ~ ~ 2.0 0.3
