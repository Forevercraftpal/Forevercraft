# The Deepcrawler — Shift Darkness Zones
# Creates 3 darkness areas at random positions around the arena

# Apply Darkness to all players within 8 blocks of boss (simplification of zone mechanic)
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run effect give @a[tag=ec.rd_participant,distance=..8] darkness 12 0

# VFX: darkness spreading
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run particle minecraft:dust{color:[0.05,0.05,0.1],scale:2.0} ~ ~1 ~ 8 2 8 0 40
execute as @e[type=silverfish,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.warden.heartbeat master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.8
