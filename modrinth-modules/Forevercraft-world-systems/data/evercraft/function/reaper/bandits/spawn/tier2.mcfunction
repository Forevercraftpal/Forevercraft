# Reaper — Bandit Tier 2 (renown 2001-3500)
# 3 Pillagers + 1 Ravager + 1 Witch
# Run at spawn marker position

summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Marauder",color:"dark_red"},equipment:{mainhand:{id:"minecraft:crossbow",count:1}},drop_chances:{mainhand:0.0f}}
summon pillager ~2 ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Marauder",color:"dark_red"},equipment:{mainhand:{id:"minecraft:crossbow",count:1}},drop_chances:{mainhand:0.0f}}
summon pillager ~-2 ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bandit Captain",color:"dark_red",bold:true},equipment:{mainhand:{id:"minecraft:crossbow",count:1}},drop_chances:{mainhand:0.0f}}
summon ravager ~ ~ ~3 {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"War Beast",color:"dark_red"}}
summon witch ~0 ~ ~-2 {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Hex Caster",color:"dark_red"}}

team join rp.bandits @e[tag=rp.fresh_spawn]
effect give @e[tag=rp.fresh_spawn] glowing 600 0 true
