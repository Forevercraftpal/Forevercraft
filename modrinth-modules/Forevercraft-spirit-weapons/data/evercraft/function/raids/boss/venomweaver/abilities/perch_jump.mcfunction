# The Venomweaver — Perch Jump
# Teleports boss to a random vine perch position (elevated)

# Pick a random perch (1-3)
scoreboard players set #rd_temp ec.var 0
execute store result score #rd_temp ec.var run random value 1..3

# Teleport to the chosen perch
execute if score #rd_temp ec.var matches 1 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @e[tag=ec.rd_vw_perch1,limit=1] run tp @s ~ ~ ~
execute if score #rd_temp ec.var matches 2 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @e[tag=ec.rd_vw_perch2,limit=1] run tp @s ~ ~ ~
execute if score #rd_temp ec.var matches 3 as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @e[tag=ec.rd_vw_perch3,limit=1] run tp @s ~ ~ ~

# VFX: web trail + landing particles
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run particle minecraft:item_cobweb ~ ~1 ~ 1 0.5 1 0.05 15
execute as @e[type=cave_spider,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.spider.step master @a[tag=ec.rd_participant] ~ ~ ~ 1.2 0.6
