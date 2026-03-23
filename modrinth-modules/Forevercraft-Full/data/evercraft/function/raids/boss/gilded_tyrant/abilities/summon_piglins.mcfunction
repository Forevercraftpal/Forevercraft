# Gilded Tyrant — Summon Piglin Reinforcements
# Summons 3 piglins near boss, capped at 6

# Count existing piglins
execute store result score #rd_temp ec.var if entity @e[tag=ec.rd_gt_add]
execute if score #rd_temp ec.var matches 6.. run return 0

# Summon 3 piglins near boss
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon piglin ~3 ~ ~0 {Tags:["ec.rd_gt_add","ec.rd_minion"],IsImmuneToZombification:1b,PersistenceRequired:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon piglin ~-2 ~ ~2 {Tags:["ec.rd_gt_add","ec.rd_minion"],IsImmuneToZombification:1b,PersistenceRequired:1b}
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run summon piglin ~0 ~ ~-3 {Tags:["ec.rd_gt_add","ec.rd_minion"],IsImmuneToZombification:1b,PersistenceRequired:1b}

# Warning
tellraw @a[tag=ec.rd_participant] [{"text":"  "},{"text":"The Tyrant calls reinforcements!","color":"gold","italic":true}]

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.piglin.celebrate hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
