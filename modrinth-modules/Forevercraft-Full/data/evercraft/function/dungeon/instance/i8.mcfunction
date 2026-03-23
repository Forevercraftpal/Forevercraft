# Instance 8: Creeper Cavern — Explosive themed (creepers, charged creepers)

# W1: 2 creepers + 1 zombie (3 mobs)
execute if score #dg_wave ec.var matches 1 run summon creeper ~4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon creeper ~-4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon zombie ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W2: 3 creepers + 2 zombies (5 mobs)
execute if score #dg_wave ec.var matches 2 run summon creeper ~5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon creeper ~-5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon creeper ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon zombie ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon zombie ~-4 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W3: 4 creepers + 2 skeletons + 1 witch (7 mobs)
execute if score #dg_wave ec.var matches 3 run summon creeper ~5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon creeper ~-5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon creeper ~5 ~1 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon creeper ~-5 ~1 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon skeleton ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon skeleton ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon witch ~0 ~1 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# W4: 3 charged creepers + 3 regular creepers + 2 zombies (iron armor) + 1 skeleton (9 mobs)
execute if score #dg_wave ec.var matches 4 run summon creeper ~6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b}
execute if score #dg_wave ec.var matches 4 run summon creeper ~-6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b}
execute if score #dg_wave ec.var matches 4 run summon creeper ~0 ~1 ~-6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b}
execute if score #dg_wave ec.var matches 4 run summon creeper ~6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon creeper ~-6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon creeper ~4 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon zombie ~-4 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon zombie ~5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon skeleton ~-5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W5: Demolition King (creeper boss, 120HP, powered, slow) + 3 Powder Keg guards (charged creepers, 40HP)
execute if score #dg_wave ec.var matches 5 run summon creeper ~0 ~1 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b,CustomName:{text:"Demolition King",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,attributes:[{id:"max_health",base:120.0d},{id:"movement_speed",base:0.2d}]}
execute if score #dg_wave ec.var matches 5 run summon creeper ~5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b,CustomName:{text:"Powder Keg",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:40.0d}]}
execute if score #dg_wave ec.var matches 5 run summon creeper ~-5 ~1 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b,CustomName:{text:"Powder Keg",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:40.0d}]}
execute if score #dg_wave ec.var matches 5 run summon creeper ~-5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",powered:1b,CustomName:{text:"Powder Keg",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:40.0d}]}
