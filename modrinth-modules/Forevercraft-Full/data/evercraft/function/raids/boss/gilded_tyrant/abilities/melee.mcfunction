# Gilded Tyrant — Melee Attack
# Called as the boss, at boss position
# Damages nearest participant within 3 blocks every 20 ticks

scoreboard players add #rd_gt_melee_cd ec.var 1
execute unless score #rd_gt_melee_cd ec.var matches 20.. run return 0
scoreboard players set #rd_gt_melee_cd ec.var 0

# Lunge toward nearest player
execute at @s as @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] run damage @s 12 minecraft:mob_attack by @e[type=!player,tag=ec.rd_boss,limit=1]
execute at @s if entity @a[tag=ec.rd_participant,distance=..3] run playsound minecraft:entity.player.attack.sweep hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 0.8 0.8
