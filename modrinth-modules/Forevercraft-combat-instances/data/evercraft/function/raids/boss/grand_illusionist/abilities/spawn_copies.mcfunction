# Grand Illusionist — Spawn 5 Illusion Copies
# Fakes are invulnerable evokers with the same name, slightly different positions

execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon evoker ~4 ~ ~0 {Tags:["ec.rd_gi_fake","ec.rd_minion"],NoAI:0b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,CustomName:{text:"The Grand Illusionist",color:"red"},CustomNameVisible:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon evoker ~-4 ~ ~0 {Tags:["ec.rd_gi_fake","ec.rd_minion"],NoAI:0b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,CustomName:{text:"The Grand Illusionist",color:"red"},CustomNameVisible:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon evoker ~0 ~ ~4 {Tags:["ec.rd_gi_fake","ec.rd_minion"],NoAI:0b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,CustomName:{text:"The Grand Illusionist",color:"red"},CustomNameVisible:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon evoker ~0 ~ ~-4 {Tags:["ec.rd_gi_fake","ec.rd_minion"],NoAI:0b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,CustomName:{text:"The Grand Illusionist",color:"red"},CustomNameVisible:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon evoker ~3 ~ ~3 {Tags:["ec.rd_gi_fake","ec.rd_minion"],NoAI:0b,Silent:1b,PersistenceRequired:1b,Invulnerable:1b,CustomName:{text:"The Grand Illusionist",color:"red"},CustomNameVisible:1b}
