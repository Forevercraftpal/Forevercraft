# Reaper — Hunting Party Tier 1 (infamy 1000-2000)
# 2 Vindicators with iron gear
# Run at spawn marker position

summon vindicator ~ ~ ~ {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bounty Hunter",color:"dark_aqua"},equipment:{mainhand:{id:"minecraft:iron_sword",count:1},head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:chainmail_chestplate",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,chest:0.0f}}
summon vindicator ~ ~0 ~2 {PersistenceRequired:1b,Tags:["rp.hunter","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bounty Hunter",color:"dark_aqua"},equipment:{mainhand:{id:"minecraft:iron_axe",count:1},head:{id:"minecraft:iron_helmet",count:1},legs:{id:"minecraft:chainmail_leggings",count:1}},drop_chances:{mainhand:0.0f,head:0.0f,legs:0.0f}}

# Add to team for colored glowing
team join rp.hunters @e[tag=rp.fresh_spawn]
effect give @e[tag=rp.fresh_spawn] glowing 600 0 true
