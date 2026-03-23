# Hollow Sovereign — Death (boss defeated!)
# Drop loot to all participants

# Kill shadow copies
kill @e[tag=ec.rd_hs_fake]
kill @e[tag=ec.rd_tendril]

# Boss-specific death dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"The Hollow Throne... stands empty once more...\"","color":"dark_aqua","italic":true}]

# Drop loot to each participant
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/hollow_sovereign/loot

# Track kill
scoreboard players add @a[tag=ec.rd_participant] rd.kills 1
