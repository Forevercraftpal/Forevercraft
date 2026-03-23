# The Crimson Bulwark — Summon Elite Guards
# 2 armored vindicators

execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run summon vindicator ~3 ~ ~0 {Tags:["ec.rd_minion","ec.rd_cb_guard"],PersistenceRequired:1b,equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1}}}
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run summon vindicator ~-3 ~ ~0 {Tags:["ec.rd_minion","ec.rd_cb_guard"],PersistenceRequired:1b,equipment:{head:{id:"minecraft:iron_helmet",count:1},chest:{id:"minecraft:iron_chestplate",count:1}}}

# VFX
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.6,0.1,0.1],scale:1.0} ~ ~1 ~ 3 1 3 0 15
execute as @e[type=vindicator,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.vindicator.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.8

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"Elite castle guards join the fight!",color:"yellow"}]
