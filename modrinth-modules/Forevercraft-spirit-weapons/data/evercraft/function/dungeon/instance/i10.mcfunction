# Instance 10: Phantom Rift — Flying/phantom themed

# W1: 3 phantoms (3 mobs)
execute if score #dg_wave ec.var matches 1 run summon phantom ~4 ~3 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon phantom ~-4 ~3 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon phantom ~0 ~4 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# W2: 4 phantoms + 1 skeleton (5 mobs)
execute if score #dg_wave ec.var matches 2 run summon phantom ~5 ~3 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon phantom ~-5 ~3 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon phantom ~0 ~4 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon phantom ~0 ~3 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon skeleton ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W3: 5 phantoms + 2 skeletons (chainmail) (7 mobs)
execute if score #dg_wave ec.var matches 3 run summon phantom ~5 ~3 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon phantom ~-5 ~4 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon phantom ~5 ~3 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon phantom ~-5 ~4 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon phantom ~0 ~3 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon skeleton ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:chainmail_chestplate"}}}
execute if score #dg_wave ec.var matches 3 run summon skeleton ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:chainmail_chestplate"}}}

# W4: 6 phantoms + 2 skeletons (iron armor, power 1 bow) + 1 stray (9 mobs)
execute if score #dg_wave ec.var matches 4 run summon phantom ~6 ~3 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon phantom ~-6 ~4 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon phantom ~6 ~3 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon phantom ~-6 ~4 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon phantom ~4 ~3 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon phantom ~-4 ~4 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon skeleton ~5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:bow",components:{enchantments:{power:1}}},chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon skeleton ~-5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:bow",components:{enchantments:{power:1}}},chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon stray ~0 ~1 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W5: Rift Watcher (phantom boss, 80HP, size:3, fast) + 3 Shadow Wing guards (phantoms, 30HP, size:2)
execute if score #dg_wave ec.var matches 5 run summon phantom ~0 ~4 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3,CustomName:{text:"Rift Watcher",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,attributes:[{id:"max_health",base:80.0d},{id:"movement_speed",base:0.4d}]}
execute if score #dg_wave ec.var matches 5 run summon phantom ~5 ~3 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2,CustomName:{text:"Shadow Wing",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 5 run summon phantom ~-5 ~4 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2,CustomName:{text:"Shadow Wing",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 5 run summon phantom ~-5 ~3 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2,CustomName:{text:"Shadow Wing",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:30.0d}]}
