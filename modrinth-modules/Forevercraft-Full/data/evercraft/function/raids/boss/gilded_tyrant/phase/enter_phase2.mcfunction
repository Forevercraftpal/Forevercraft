# Gilded Tyrant — Enter Phase 2: Gold Bombardment

# Reset cooldowns
scoreboard players set #rd_gt_charge_cd ec.var 0
scoreboard players set #rd_gt_slam_cd ec.var 0
scoreboard players set #rd_gt_add_cd ec.var 0
scoreboard players set #rd_gt_gold_bomb_cd ec.var 0

# Dialogue
tellraw @a[tag=ec.rd_participant] [{text:"  "},{"text":"\"You dare scratch my gilded armor?! I will BURY you in gold!\"","color":"yellow","italic":true}]

# VFX — gold eruption
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:lava ~ ~1 ~ 3 2 3 0.5 30
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.piglin_brute.angry hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.6
