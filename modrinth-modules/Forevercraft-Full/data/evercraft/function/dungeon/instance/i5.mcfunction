# Instance 5: Witch's Hollow — Witch + creeper themed
execute if score #dg_wave ec.var matches 1 run summon witch ~4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon zombie ~-4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon zombie ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

execute if score #dg_wave ec.var matches 2 run summon witch ~5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon witch ~-5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon creeper ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon creeper ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon zombie ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

execute if score #dg_wave ec.var matches 3 run summon witch ~5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon witch ~-5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon witch ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon creeper ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon creeper ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon creeper ~0 ~1 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon spider ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

execute if score #dg_wave ec.var matches 4 run summon witch ~6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon witch ~-6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon witch ~6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon witch ~-6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon creeper ~5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b}
execute if score #dg_wave ec.var matches 4 run summon creeper ~-5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b}
execute if score #dg_wave ec.var matches 4 run summon creeper ~5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon spider ~-5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon spider ~0 ~1 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}

# W5: Coven Mother (witch boss, 110HP) + 2 charged creepers
execute if score #dg_wave ec.var matches 5 run summon witch ~0 ~1 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"Coven Mother",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,attributes:[{id:"max_health",base:110.0d}]}
execute if score #dg_wave ec.var matches 5 run summon creeper ~5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b,CustomName:{text:"Volatile Familiar",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:40.0d}]}
execute if score #dg_wave ec.var matches 5 run summon creeper ~-5 ~1 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b,CustomName:{text:"Volatile Familiar",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:40.0d}]}
