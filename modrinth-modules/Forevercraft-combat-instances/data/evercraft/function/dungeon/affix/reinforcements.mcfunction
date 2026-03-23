# Party Affix: Reinforcements — Spawn 3 extra zombies at center
# Run at: dg.center marker position
summon zombie ~ ~ ~ {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
summon zombie ~2 ~ ~1 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
summon zombie ~-1 ~ ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,DeathLootTable:"minecraft:empty"}
