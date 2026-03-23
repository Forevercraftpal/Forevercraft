# Gatekeeper — Death (boss defeated!)
# Drop loot to all participants

# Kill remaining minions
kill @e[tag=ec.rd_gk_portal]
kill @e[tag=ec.rd_gk_wall]

# Clear dimension effects
effect clear @a[tag=ec.rd_participant] jump_boost

# Boss-specific death dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"The gate... opens... at last...\"","color":"dark_green","italic":true}]

# Drop loot to each participant
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/gatekeeper/loot

# Track kill
scoreboard players add @a[tag=ec.rd_participant] rd.kills 1
