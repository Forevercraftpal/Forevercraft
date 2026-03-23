# The Mossheart Warden — Core Destroyed
# Called as the core entity

scoreboard players remove #rd_mw_cores_active ec.var 1

# VFX: core explosion
particle minecraft:explosion ~ ~1 ~ 0.5 0.5 0.5 0.3 5
particle minecraft:happy_villager ~ ~1 ~ 1 1 1 0.1 20
playsound minecraft:block.respawn_anchor.deplete master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.6

tellraw @a[tag=ec.rd_participant] [{text:"[",color:"dark_green"},{text:"Raid",color:"green",bold:true},{text:"] ",color:"dark_green"},{text:"Spawner core destroyed!",color:"green",bold:true}]

# Convert position to safe zone marker for Phase 3
summon marker ~ ~ ~ {Tags:["ec.rd_mechanic","ec.rd_mw_safe_zone"]}

# Kill the core
kill @s
