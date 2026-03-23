# The Eternal Pharaoh — Summon Mummy Husks

execute at @e[type=husk,tag=ec.rd_boss,limit=1] run summon husk ~3 ~ ~ {Tags:["ec.rd_minion","ec.rd_ep_mummy"],PersistenceRequired:1b,CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"minecraft:golden_helmet"}}}
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run summon husk ~-3 ~ ~ {Tags:["ec.rd_minion","ec.rd_ep_mummy"],PersistenceRequired:1b,CanPickUpLoot:0b,equipment:{mainhand:{id:"minecraft:golden_sword"},head:{id:"minecraft:golden_helmet"}}}

execute at @e[type=husk,tag=ec.rd_boss,limit=1] run particle minecraft:dust{color:[0.9,0.7,0.1],scale:1.5} ~3 ~1 ~ 0.5 0.5 0.5 0.05 10
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run particle minecraft:dust{color:[0.9,0.7,0.1],scale:1.5} ~-3 ~1 ~ 0.5 0.5 0.5 0.05 10
execute at @e[type=husk,tag=ec.rd_boss,limit=1] run playsound minecraft:entity.husk.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
