# Void Architect — Death (boss defeated!)
# Drop loot to all participants

# Kill remaining minions
kill @e[tag=ec.rd_mirror]
kill @e[tag=ec.rd_va_crystal]
kill @e[tag=ec.rd_well]
kill @e[tag=ec.rd_bubble]
kill @e[tag=ec.rd_va_proj]

# Boss-specific death dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"The architecture... crumbles... without its... maker...\"","color":"dark_purple","italic":true}]

# Drop loot to each participant
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/void_architect/loot

# Track kill
scoreboard players add @a[tag=ec.rd_participant] rd.kills 1
