# Grand Illusionist — Death (boss defeated!)
# Drop loot to all participants

# Kill remaining minions
kill @e[tag=ec.rd_gi_fake]
kill @e[tag=ec.rd_gi_vex]
kill @e[tag=ec.rd_gi_totem]
kill @e[tag=ec.rd_gi_ravager]

# Boss-specific death dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"It was all... an illusion... even I... was never real...\"","color":"red","italic":true}]

# Drop loot to each participant
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/grand_illusionist/loot

# Track kill
scoreboard players add @a[tag=ec.rd_participant] rd.kills 1
