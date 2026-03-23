# Tidecaller — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 drowned minions with tridents
summon drowned ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:trident"}},CustomName:{text:"Tide Guard",color:"dark_aqua"}}
summon drowned ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:trident"}},CustomName:{text:"Tide Guard",color:"dark_aqua"}}

# Tidal wave VFX
particle minecraft:bubble_column_up ~ ~1 ~ 5 2 5 0.1 50
particle minecraft:rain ~ ~3 ~ 5 2 5 0.1 40
playsound minecraft:entity.elder_guardian.curse master @a ~ ~ ~ 2.0 0.5
