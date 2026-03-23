# Soul Warden — Phase 4 Specifics
# Called as the boss entity, at boss position

# Spawn 2 wither skeleton minions
summon wither_skeleton ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"}},CustomName:{text:"Soul Reaper",color:"dark_aqua"}}
summon wither_skeleton ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"}},CustomName:{text:"Soul Reaper",color:"dark_aqua"}}

# Soul harvest VFX
particle minecraft:soul ~ ~1 ~ 8 3 8 0.15 60
particle minecraft:soul_fire_flame ~ ~1 ~ 5 2 5 0.08 40
playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 2.0 0.4
