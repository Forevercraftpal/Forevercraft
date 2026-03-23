# The Ashen Lord — Activate Blaze Spawner
# Activates 1 of 4 blaze spawner pillars, spawning 2 blazes

# Announce
tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_red"},{text:"Raid",color:"red",bold:true},{text:"] ",color:"dark_red"},{text:"A blaze spawner ignites!",color:"gold"}]

# Cycle through spawners (1-4) using counter
scoreboard players add #rd_counter1 ec.var 1
execute if score #rd_counter1 ec.var matches 5.. run scoreboard players set #rd_counter1 ec.var 1

# Spawn 2 blazes at the active spawner pillar
execute if score #rd_counter1 ec.var matches 1 at @e[tag=ec.rd_al_sp1,limit=1] run summon blaze ~ ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 1 at @e[tag=ec.rd_al_sp1,limit=1] run summon blaze ~1 ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 1 at @e[tag=ec.rd_al_sp1,limit=1] run particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0.1 30
execute if score #rd_counter1 ec.var matches 1 at @e[tag=ec.rd_al_sp1,limit=1] run playsound minecraft:entity.blaze.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

execute if score #rd_counter1 ec.var matches 2 at @e[tag=ec.rd_al_sp2,limit=1] run summon blaze ~ ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 2 at @e[tag=ec.rd_al_sp2,limit=1] run summon blaze ~1 ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 2 at @e[tag=ec.rd_al_sp2,limit=1] run particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0.1 30
execute if score #rd_counter1 ec.var matches 2 at @e[tag=ec.rd_al_sp2,limit=1] run playsound minecraft:entity.blaze.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

execute if score #rd_counter1 ec.var matches 3 at @e[tag=ec.rd_al_sp3,limit=1] run summon blaze ~ ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 3 at @e[tag=ec.rd_al_sp3,limit=1] run summon blaze ~1 ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 3 at @e[tag=ec.rd_al_sp3,limit=1] run particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0.1 30
execute if score #rd_counter1 ec.var matches 3 at @e[tag=ec.rd_al_sp3,limit=1] run playsound minecraft:entity.blaze.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5

execute if score #rd_counter1 ec.var matches 4 at @e[tag=ec.rd_al_sp4,limit=1] run summon blaze ~ ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 4 at @e[tag=ec.rd_al_sp4,limit=1] run summon blaze ~1 ~1 ~ {Tags:["ec.rd_minion","ec.rd_al_blaze"],PersistenceRequired:1b}
execute if score #rd_counter1 ec.var matches 4 at @e[tag=ec.rd_al_sp4,limit=1] run particle minecraft:flame ~ ~1 ~ 0.5 1 0.5 0.1 30
execute if score #rd_counter1 ec.var matches 4 at @e[tag=ec.rd_al_sp4,limit=1] run playsound minecraft:entity.blaze.ambient master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.5
