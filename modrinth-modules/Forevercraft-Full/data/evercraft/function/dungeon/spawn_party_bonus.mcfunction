# Dungeon — Party Bonus Mobs
# Spawns extra mobs for each additional player beyond 1
# Run at: dg.center marker position (inherited from spawn_wave context)
# Bonus mobs get dg.mob tag → go through apply_scaling like everything else

# === 2+ PLAYERS: First bonus batch ===

# W1: +1 zombie
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 1 run summon zombie ~3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

# W2: +1 zombie, +1 skeleton
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 2 run summon zombie ~3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 2 run summon skeleton ~-3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

# W3: +1 armored zombie, +1 skeleton
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 3 run summon zombie ~3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 3 run summon skeleton ~-3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

# W4: +1 armored zombie, +1 armored skeleton, +1 witch
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 4 run summon zombie ~3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 4 run summon skeleton ~-3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 4 run summon witch ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# W5: +1 armored vindicator (elite guard)
execute if score #dg_players ec.var matches 2.. if score #dg_wave ec.var matches 5 run summon vindicator ~3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:iron_chestplate"}},attributes:[{id:"max_health",base:40.0d}]}

# === 3+ PLAYERS: Second bonus batch (different positions) ===

execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 1 run summon skeleton ~-3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 2 run summon zombie ~-3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}
execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 2 run summon skeleton ~3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 3 run summon zombie ~-3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 3 run summon skeleton ~3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 4 run summon zombie ~-3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 4 run summon skeleton ~3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 4 run summon witch ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

execute if score #dg_players ec.var matches 3.. if score #dg_wave ec.var matches 5 run summon vindicator ~-3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:iron_chestplate"}},attributes:[{id:"max_health",base:40.0d}]}

# === 4+ PLAYERS: Third bonus batch ===

execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 1 run summon zombie ~-3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 2 run summon zombie ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}
execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 2 run summon skeleton ~0 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 3 run summon zombie ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 3 run summon skeleton ~0 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 4 run summon zombie ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"}}}
execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 4 run summon skeleton ~0 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 4 run summon vindicator ~5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b}

execute if score #dg_players ec.var matches 4.. if score #dg_wave ec.var matches 5 run summon vindicator ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CanPickUpLoot:0b,equipment:{chest:{id:"minecraft:diamond_chestplate"}},attributes:[{id:"max_health",base:40.0d}]}
