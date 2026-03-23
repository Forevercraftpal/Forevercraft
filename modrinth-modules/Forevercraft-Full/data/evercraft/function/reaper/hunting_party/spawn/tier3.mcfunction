# Reaper — Hunting Party Tier 3 (infamy 3501+)
# 3 Vindicators + 1 Iron Golem + 1 Evoker
# Run at spawn marker position

summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Elite Hunter",color:"dark_aqua"},equipment:{mainhand:{id:"minecraft:diamond_sword",count:1},head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,chest:0.0f}}
summon vindicator ~2 ~ ~ {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Elite Hunter",color:"dark_aqua"},equipment:{mainhand:{id:"minecraft:diamond_axe",count:1},head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,chest:0.0f}}
summon vindicator ~-2 ~ ~ {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bounty Captain",color:"dark_aqua",bold:true},equipment:{mainhand:{id:"minecraft:netherite_sword",count:1},head:{id:"minecraft:netherite_helmet",count:1},chest:{id:"minecraft:diamond_chestplate",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,chest:0.0f}}

# Iron Golem
summon iron_golem ~ ~ ~3 {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Iron Warden",color:"dark_aqua"}}

# Evoker (summoner support)
summon evoker ~0 ~ ~-3 {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bounty Magister",color:"dark_aqua"}}

# Add to team for colored glowing
team join rp.hunters @e[tag=rp.fresh_spawn]
effect give @e[tag=rp.fresh_spawn] glowing 600 0 true
