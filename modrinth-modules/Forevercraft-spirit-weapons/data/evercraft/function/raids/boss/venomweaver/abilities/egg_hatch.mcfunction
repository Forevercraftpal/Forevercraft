# The Venomweaver — Egg Sac Hatch
# Called as the egg sac entity at its position — spawns 4 baby cave spiders

# Spawn 4 small cave spiders
summon cave_spider ~ ~ ~ {Tags:["ec.rd_minion","ec.rd_vw_spider"],PersistenceRequired:1b}
summon cave_spider ~1 ~ ~ {Tags:["ec.rd_minion","ec.rd_vw_spider"],PersistenceRequired:1b}
summon cave_spider ~ ~ ~1 {Tags:["ec.rd_minion","ec.rd_vw_spider"],PersistenceRequired:1b}
summon cave_spider ~-1 ~ ~-1 {Tags:["ec.rd_minion","ec.rd_vw_spider"],PersistenceRequired:1b}

# VFX: hatch burst
particle minecraft:item_cobweb ~ ~0.5 ~ 0.8 0.5 0.8 0.1 25
particle minecraft:item_slime ~ ~0.5 ~ 0.5 0.3 0.5 0.05 15
playsound minecraft:entity.spider.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 1.8

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"An egg sac has hatched!",color:"red",italic:true}]

# Kill egg sac
kill @s
