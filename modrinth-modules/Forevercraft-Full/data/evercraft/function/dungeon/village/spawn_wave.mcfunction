# Village Defense — Wave Spawner
# All waves are illager/raid themed. Run at dg.center position.

# W1: 3 pillagers
execute if score #dg_wave ec.var matches 1 run summon pillager ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon pillager ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon pillager ~0 ~1 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W2: 3 pillagers + 2 vindicators
execute if score #dg_wave ec.var matches 2 run summon pillager ~7 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon pillager ~-7 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon pillager ~0 ~1 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon vindicator ~5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon vindicator ~-5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W3: 3 pillagers + 2 vindicators + 1 witch + 1 ravager
execute if score #dg_wave ec.var matches 3 run summon pillager ~7 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon pillager ~-7 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon pillager ~7 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon vindicator ~-7 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon vindicator ~5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon witch ~0 ~1 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon ravager ~0 ~1 ~-7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# W4: 4 pillagers + 3 vindicators + 1 evoker + 1 ravager
execute if score #dg_wave ec.var matches 4 run summon pillager ~8 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon pillager ~-8 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon pillager ~8 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon pillager ~-8 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon vindicator ~6 ~1 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon vindicator ~-6 ~1 ~-6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon vindicator ~6 ~1 ~-6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:30.0d}]}
execute if score #dg_wave ec.var matches 4 run summon evoker ~0 ~1 ~8 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon ravager ~0 ~1 ~-8 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",attributes:[{id:"max_health",base:120.0d}]}

# W5: Raid Captain boss (pillager, 150HP) + 1 evoker + 2 ravagers
execute if score #dg_wave ec.var matches 5 run summon pillager ~0 ~1 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"Raid Captain",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,equipment:{mainhand:{id:"minecraft:crossbow",components:{enchantments:{quick_charge:3,piercing:1}}},chest:{id:"minecraft:netherite_chestplate"},head:{id:"minecraft:netherite_helmet"},legs:{id:"minecraft:diamond_leggings"},feet:{id:"minecraft:diamond_boots"}},attributes:[{id:"max_health",base:150.0d},{id:"movement_speed",base:0.38d},{id:"knockback_resistance",base:0.5d}]}
execute if score #dg_wave ec.var matches 5 run summon evoker ~6 ~1 ~6 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",CustomName:{text:"Dark Conjurer",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:40.0d}]}
execute if score #dg_wave ec.var matches 5 run summon ravager ~-6 ~1 ~-6 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"War Beast",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:80.0d}]}
execute if score #dg_wave ec.var matches 5 run summon ravager ~6 ~1 ~-6 {Tags:["dg.mob","dg.guard","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"War Beast",color:"red"},CustomNameVisible:1b,attributes:[{id:"max_health",base:80.0d}]}

# Spawn bonus mobs for party members (2+ players)
function evercraft:dungeon/spawn_party_bonus

# Apply difficulty + DR scaling to freshly spawned mobs
function evercraft:dungeon/instance/apply_scaling

# Wave announcement
execute if score #dg_wave ec.var matches 1 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 1 run title @a[tag=dg.player] title {text:"Wave 1",color:"dark_green",bold:true}
execute if score #dg_wave ec.var matches 1 run title @a[tag=dg.player] subtitle {text:"Scouts approach!",color:"green"}
execute if score #dg_wave ec.var matches 2 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 2 run title @a[tag=dg.player] title {text:"Wave 2",color:"dark_green",bold:true}
execute if score #dg_wave ec.var matches 2 run title @a[tag=dg.player] subtitle {text:"Melee reinforcements!",color:"green"}
execute if score #dg_wave ec.var matches 3 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 3 run title @a[tag=dg.player] title {text:"Wave 3",color:"dark_green",bold:true}
execute if score #dg_wave ec.var matches 3 run title @a[tag=dg.player] subtitle {text:"The ravager arrives!",color:"green"}
execute if score #dg_wave ec.var matches 4 run title @a[tag=dg.player] times 5 30 10
execute if score #dg_wave ec.var matches 4 run title @a[tag=dg.player] title {text:"Wave 4",color:"dark_green",bold:true}
execute if score #dg_wave ec.var matches 4 run title @a[tag=dg.player] subtitle {text:"Strange powers and might!",color:"green"}
execute if score #dg_wave ec.var matches 5 run title @a[tag=dg.player] times 5 40 10
execute if score #dg_wave ec.var matches 5 run title @a[tag=dg.player] title {text:"FINAL WAVE",color:"dark_red",bold:true}
execute if score #dg_wave ec.var matches 5 run title @a[tag=dg.player] subtitle {text:"The Raid Captain!",color:"gold"}

playsound minecraft:entity.ender_dragon.growl master @a[tag=dg.player] ~ ~ ~ 0.4 1.5
execute if score #dg_wave ec.var matches 5 run playsound minecraft:event.raid.horn master @a[tag=dg.player] ~ ~ ~ 1 0.8
