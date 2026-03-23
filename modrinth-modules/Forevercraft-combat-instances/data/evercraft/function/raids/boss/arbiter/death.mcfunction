# Arbiter — Death (boss defeated!)
# Drop loot to all participants

# Kill remaining minions
kill @e[tag=ec.rd_arb_tornado]
kill @e[tag=ec.rd_arb_proj]

# Boss-specific death dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"The verdict... was yours... all along...\"","color":"aqua","italic":true}]

# Drop loot to each participant
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/arbiter/loot

# Track kill
scoreboard players add @a[tag=ec.rd_participant] rd.kills 1
