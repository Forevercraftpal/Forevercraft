# The Deepcrawler — Spawn Spider Swarm
# Summons 4 cave spiders at random positions near the boss

execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run summon cave_spider ~2 ~ ~0 {Tags:["ec.rd_minion","ec.rd_dc_spider"],PersistenceRequired:1b}
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run summon cave_spider ~-2 ~ ~0 {Tags:["ec.rd_minion","ec.rd_dc_spider"],PersistenceRequired:1b}
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run summon cave_spider ~0 ~ ~2 {Tags:["ec.rd_minion","ec.rd_dc_spider"],PersistenceRequired:1b}
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run summon cave_spider ~0 ~ ~-2 {Tags:["ec.rd_minion","ec.rd_dc_spider"],PersistenceRequired:1b}

# VFX
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.3,0.3,0.3],scale:1.0} ~ ~0.5 ~ 2 0.5 2 0 15
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.spider.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 1.2

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_gray"},{text:"Raid",color:"gray",bold:true},{text:"] ",color:"dark_gray"},{text:"Cave spiders swarm from the tunnels!",color:"red"}]
