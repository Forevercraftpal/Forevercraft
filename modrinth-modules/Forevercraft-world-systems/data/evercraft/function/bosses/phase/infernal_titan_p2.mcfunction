# Infernal Titan — Phase 2 Specifics
# Called as the boss entity, at boss position

# Spawn 3 wither_skeleton minions
summon wither_skeleton ~3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"}}}
summon wither_skeleton ~-3 ~ ~ {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"}}}
summon wither_skeleton ~ ~ ~3 {Tags:["wb.minion"],PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:stone_sword"}}}

# Fire resistance for self
effect give @s fire_resistance infinite 0 true
