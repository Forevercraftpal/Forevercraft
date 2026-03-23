# Reaper — Hunting Party Tier 2 (infamy 2001-3500)
# 3 Vindicators + 1 Iron Golem
# Run at spawn marker position

summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bounty Hunter",color:"dark_aqua"},equipment:{mainhand:{id:"minecraft:iron_sword",count:1},head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,chest:0.0f}}
summon vindicator ~2 ~ ~ {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bounty Hunter",color:"dark_aqua"},equipment:{mainhand:{id:"minecraft:iron_axe",count:1},head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,chest:0.0f}}
summon vindicator ~-2 ~ ~ {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bounty Enforcer",color:"dark_aqua"},equipment:{mainhand:{id:"minecraft:diamond_sword",count:1},head:{id:"minecraft:diamond_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,chest:0.0f}}

# Iron Golem (already hostile to nearby players by default)
summon iron_golem ~ ~ ~3 {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Iron Warden",color:"dark_aqua"}}

# Add to team for colored glowing
team join rp.hunters @e[tag=rp.fresh_spawn]
effect give @e[tag=rp.fresh_spawn] glowing 600 0 true
