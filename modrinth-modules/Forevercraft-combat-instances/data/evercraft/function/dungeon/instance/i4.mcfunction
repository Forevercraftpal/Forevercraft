# Instance 4: Blaze Forge — Nether themed (blazes, magma cubes, wither skeletons)
execute if score #dg_wave ec.var matches 1 run summon blaze ~4 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon blaze ~-4 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon magma_cube ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}

execute if score #dg_wave ec.var matches 2 run summon blaze ~5 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon blaze ~-5 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon magma_cube ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 2 run summon magma_cube ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}
execute if score #dg_wave ec.var matches 2 run summon wither_skeleton ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

execute if score #dg_wave ec.var matches 3 run summon blaze ~6 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon blaze ~-6 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon blaze ~0 ~2 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon wither_skeleton ~5 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:stone_sword"}}}
execute if score #dg_wave ec.var matches 3 run summon wither_skeleton ~-5 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:stone_sword"}}}
execute if score #dg_wave ec.var matches 3 run summon magma_cube ~0 ~1 ~-6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 3 run summon magma_cube ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}

execute if score #dg_wave ec.var matches 4 run summon blaze ~7 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon blaze ~-7 ~2 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon blaze ~0 ~2 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon blaze ~0 ~2 ~-7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon wither_skeleton ~6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:iron_chestplate"}}}
execute if score #dg_wave ec.var matches 4 run summon wither_skeleton ~-6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:iron_chestplate"}}}
execute if score #dg_wave ec.var matches 4 run summon wither_skeleton ~6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:iron_chestplate"}}}
execute if score #dg_wave ec.var matches 4 run summon magma_cube ~5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:4}
execute if score #dg_wave ec.var matches 4 run summon magma_cube ~-5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}

# W5: Inferno (blaze boss, 130HP) + 2 wither skeleton elite
execute if score #dg_wave ec.var matches 5 run summon blaze ~0 ~2 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"The Inferno",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,attributes:[{id:"max_health",base:130.0d},{id:"attack_damage",base:10.0d}]}
execute if score #dg_wave ec.var matches 5 run summon wither_skeleton ~5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"Nether Guard",color:"red"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:netherite_sword",components:{enchantments:{sharpness:2}}},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"}},attributes:[{id:"max_health",base:50.0d},{id:"attack_damage",base:9.0d}]}
execute if score #dg_wave ec.var matches 5 run summon wither_skeleton ~-5 ~1 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"Nether Guard",color:"red"},CustomNameVisible:1b,equipment:{mainhand:{id:"minecraft:netherite_sword",components:{enchantments:{sharpness:2}}},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"}},attributes:[{id:"max_health",base:50.0d},{id:"attack_damage",base:9.0d}]}
