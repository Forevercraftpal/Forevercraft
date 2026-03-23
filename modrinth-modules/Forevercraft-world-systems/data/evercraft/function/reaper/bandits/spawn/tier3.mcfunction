# Reaper — Bandit Tier 3 (renown 3501+)
# 2 Evokers + 2 Ravagers + 1 Illusioner
# Run at spawn marker position

summon evoker ~ ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bandit Summoner",color:"dark_red"}}
summon evoker ~3 ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Bandit Summoner",color:"dark_red"}}
summon ravager ~ ~ ~3 {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"War Beast",color:"dark_red"}}
summon ravager ~-3 ~ ~ {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"War Beast",color:"dark_red"}}
summon illusioner ~0 ~ ~-3 {PersistenceRequired:1b,Tags:["rp.bandit","rp.spawned","rp.fresh_spawn"],CustomName:{text:"Phantom Thief",color:"dark_red",bold:true}}

team join rp.bandits @e[tag=rp.fresh_spawn]
effect give @e[tag=rp.fresh_spawn] glowing 600 0 true
