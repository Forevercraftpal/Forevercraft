# Grand Forge — Spawn a wave of forge guardians around the player
# Spawns 5 mobs in a ring around the player

# Iron golems are thematic (forge) but hostile variants
summon minecraft:zombie ~ ~ ~5 {Tags:["gf.mob"],CustomName:{text:"Forge Sentinel",color:"green"},PersistenceRequired:1b,equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1}},DeathLootTable:"minecraft:empty"}
summon minecraft:zombie ~5 ~ ~ {Tags:["gf.mob"],CustomName:{text:"Forge Sentinel",color:"green"},PersistenceRequired:1b,equipment:{head:{id:"minecraft:iron_helmet",count:1},legs:{id:"minecraft:iron_leggings",count:1}},DeathLootTable:"minecraft:empty"}
summon minecraft:skeleton ~ ~ ~-5 {Tags:["gf.mob"],CustomName:{text:"Forge Warden",color:"green"},PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow",count:1},head:{id:"minecraft:chainmail_helmet",count:1}},DeathLootTable:"minecraft:empty"}
summon minecraft:husk ~-5 ~ ~ {Tags:["gf.mob"],CustomName:{text:"Forge Brute",color:"green"},PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:iron_sword",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1}},DeathLootTable:"minecraft:empty"}
summon minecraft:stray ~ ~ ~3 {Tags:["gf.mob"],CustomName:{text:"Forge Archer",color:"green"},PersistenceRequired:1b,equipment:{mainhand:{id:"minecraft:bow",count:1}},DeathLootTable:"minecraft:empty"}

playsound minecraft:entity.evoker.prepare_summon master @a ~ ~ ~ 0.7 1.0
