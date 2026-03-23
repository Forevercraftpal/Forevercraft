# Instance 16: Warden's Domain — Deep dark themed (silverfish swarm + big boss)

# W1: 5 silverfish
execute if score #dg_wave ec.var matches 1 run summon silverfish ~4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon silverfish ~-4 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon silverfish ~0 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon silverfish ~3 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 1 run summon silverfish ~-3 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# W2: 7 silverfish + 1 zombie
execute if score #dg_wave ec.var matches 2 run summon silverfish ~5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon silverfish ~-5 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon silverfish ~0 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon silverfish ~0 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon silverfish ~4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon silverfish ~-4 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon silverfish ~-4 ~1 ~4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 2 run summon zombie ~4 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W3: 5 silverfish + 2 zombies (iron armor) + 2 skeletons
execute if score #dg_wave ec.var matches 3 run summon silverfish ~5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon silverfish ~-5 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon silverfish ~3 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon silverfish ~-3 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon silverfish ~0 ~1 ~-4 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon zombie ~6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 3 run summon zombie ~-6 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 3 run summon skeleton ~5 ~1 ~-3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 3 run summon skeleton ~-5 ~1 ~3 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty"}

# W4: 6 silverfish + 3 zombies (diamond armor, iron sword) + 2 skeletons (iron armor, power 1) + 1 creeper
execute if score #dg_wave ec.var matches 4 run summon silverfish ~6 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon silverfish ~-6 ~1 ~2 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon silverfish ~4 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon silverfish ~-4 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon silverfish ~3 ~1 ~-6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon silverfish ~-3 ~1 ~6 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}
execute if score #dg_wave ec.var matches 4 run summon zombie ~7 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon zombie ~-7 ~1 ~0 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon zombie ~0 ~1 ~7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:iron_sword"},chest:{id:"minecraft:diamond_chestplate"},head:{id:"minecraft:diamond_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon skeleton ~5 ~1 ~-5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:bow",components:{enchantments:{power:1}}},chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon skeleton ~-5 ~1 ~5 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,CanPickUpLoot:0b,drop_chances:{mainhand:0f,offhand:0f,head:0f,chest:0f,legs:0f,feet:0f},DeathLootTable:"minecraft:empty",equipment:{mainhand:{id:"minecraft:bow",components:{enchantments:{power:1}}},chest:{id:"minecraft:iron_chestplate"},head:{id:"minecraft:iron_helmet"}}}
execute if score #dg_wave ec.var matches 4 run summon creeper ~0 ~1 ~-7 {Tags:["dg.mob","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty"}

# W5: The Deep One (warden boss, 250HP, no guards — warden is terrifying enough alone)
execute if score #dg_wave ec.var matches 5 run summon warden ~0 ~1 ~0 {Tags:["dg.mob","dg.boss","ec.entity"],PersistenceRequired:1b,DeathLootTable:"minecraft:empty",CustomName:{text:"The Deep One",color:"gold",bold:true},CustomNameVisible:1b,Glowing:1b,attributes:[{id:"max_health",base:250.0d},{id:"movement_speed",base:0.25d},{id:"attack_damage",base:20.0d},{id:"knockback_resistance",base:0.8d}]}
# Anger warden at player immediately + schedule post-emergence anger (emergence lasts ~134 ticks)
execute if score #dg_wave ec.var matches 5 as @e[type=warden,tag=dg.mob,limit=1] at @s run damage @s 0.01 minecraft:player_attack by @a[tag=dg.player,sort=nearest,limit=1,gamemode=!spectator]
execute if score #dg_wave ec.var matches 5 run schedule function evercraft:dungeon/instance/anger_deep_one 140t replace
