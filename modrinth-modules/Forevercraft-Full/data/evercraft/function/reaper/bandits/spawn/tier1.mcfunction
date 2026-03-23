# Reaper — Bandit Tier 1 (renown 1000-2000)
# 2 Pillagers + 1 Ravager
# Run at spawn marker position

summon pillager ~ ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Highwayman",color:"dark_red"},equipment:{mainhand:{id:"minecraft:crossbow",count:1}},drop_chances:{mainhand:0.0f}}
summon pillager ~2 ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Highwayman",color:"dark_red"},equipment:{mainhand:{id:"minecraft:crossbow",count:1}},drop_chances:{mainhand:0.0f}}
summon ravager ~ ~ ~3 {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"War Beast",color:"dark_red"}}

# Add to team for colored glowing
team join rp.bandits @e[tag=rp.fresh_spawn]
effect give @e[tag=rp.fresh_spawn] glowing 600 0 true
