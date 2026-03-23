# Instance 12: Slime Pit — Slime themed

# W1: 3 slimes size:2 (3 mobs)
execute if score #dg_wave ec.var matches 1 run summon slime ~4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}
execute if score #dg_wave ec.var matches 1 run summon slime ~-4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}
execute if score #dg_wave ec.var matches 1 run summon slime ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}

# W2: 2 slimes size:3 + 2 slimes size:2 + 1 magma_cube size:2 (5 mobs)
execute if score #dg_wave ec.var matches 2 run summon slime ~5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 2 run summon slime ~-5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 2 run summon slime ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}
execute if score #dg_wave ec.var matches 2 run summon slime ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}
execute if score #dg_wave ec.var matches 2 run summon magma_cube ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:2}

# W3: 3 slimes size:3 + 2 magma_cubes size:3 + 2 zombies (7 mobs)
execute if score #dg_wave ec.var matches 3 run summon slime ~5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 3 run summon slime ~-5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 3 run summon slime ~5 ~1 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 3 run summon magma_cube ~-5 ~1 ~-2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 3 run summon magma_cube ~0 ~1 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 3 run summon zombie ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon zombie ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W4: 3 slimes size:4 + 3 magma_cubes size:3 + 2 zombies (iron armor) + 1 witch (9 mobs)
execute if score #dg_wave ec.var matches 4 run summon slime ~6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:4}
execute if score #dg_wave ec.var matches 4 run summon slime ~-6 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:4}
execute if score #dg_wave ec.var matches 4 run summon slime ~6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:4}
execute if score #dg_wave ec.var matches 4 run summon magma_cube ~-6 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 4 run summon magma_cube ~5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 4 run summon magma_cube ~-5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:3}
execute if score #dg_wave ec.var matches 4 run summon zombie ~-5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon zombie ~5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon witch ~0 ~1 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# W5: Slime Overlord (slime boss, size:7, 100HP) + 2 Magma Colossus guards (magma_cubes, size:4, 50HP)
execute if score #dg_wave ec.var matches 5 run summon slime ~0 ~1 ~0 {Tags:["dg.mob","dg.boss","ec.entity","dg.slime_overlord"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:7,CustomName:{text:"Slime Overlord",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,attributes:[{id:"max_health",base:100.0d}]}
# Slime Overlord buffs: wither aura, strength 7, regen, resistance, speed 8
execute if score #dg_wave ec.var matches 5 as @e[tag=dg.slime_overlord,limit=1,sort=nearest] run effect give @s wither infinite 1 true
execute if score #dg_wave ec.var matches 5 as @e[tag=dg.slime_overlord,limit=1,sort=nearest] run effect give @s strength infinite 6 true
execute if score #dg_wave ec.var matches 5 as @e[tag=dg.slime_overlord,limit=1,sort=nearest] run effect give @s regeneration infinite 0 true
execute if score #dg_wave ec.var matches 5 as @e[tag=dg.slime_overlord,limit=1,sort=nearest] run effect give @s resistance infinite 0 true
execute if score #dg_wave ec.var matches 5 as @e[tag=dg.slime_overlord,limit=1,sort=nearest] run effect give @s speed infinite 7 true
execute if score #dg_wave ec.var matches 5 run summon magma_cube ~5 ~1 ~5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:4,CustomName:{text:"Magma Colossus",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:50.0d}]}
execute if score #dg_wave ec.var matches 5 run summon magma_cube ~-5 ~1 ~-5 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",size:4,CustomName:{text:"Magma Colossus",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:50.0d}]}
