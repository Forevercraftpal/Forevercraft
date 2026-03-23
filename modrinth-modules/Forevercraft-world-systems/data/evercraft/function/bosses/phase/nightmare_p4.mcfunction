# Nightmare — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 wither skeleton minions
summon wither_skeleton ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"}},CustomName:{text:"Nightmare Shade",color:"dark_gray"}}
summon wither_skeleton ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"}},CustomName:{text:"Nightmare Shade",color:"dark_gray"}}

# Nightmare realm VFX
particle minecraft:sculk_soul ~ ~1 ~ 5 2 5 0.05 50
particle minecraft:smoke ~ ~1 ~ 5 2 5 0.05 40
playsound minecraft:entity.warden.sonic_boom master @a ~ ~ ~ 2.0 0.3
