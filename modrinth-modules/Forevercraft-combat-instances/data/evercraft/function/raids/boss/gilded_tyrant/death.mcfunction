# Gilded Tyrant — Death (boss defeated!)
# Drop loot to all participants

# Kill remaining piglins
kill @e[tag=ec.rd_gt_add]
kill @e[tag=ec.rd_gt_bomb]

# Boss-specific death dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"My gold... my throne... it was all... for nothing...\"","color":"gold","italic":true}]

# Drop loot to each participant
execute as @a[tag=ec.rd_participant] at @s run function evercraft:raids/boss/gilded_tyrant/loot

# Track kill
scoreboard players add @a[tag=ec.rd_participant] rd.kills 1
