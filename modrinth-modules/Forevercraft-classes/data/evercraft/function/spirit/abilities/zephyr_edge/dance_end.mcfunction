# Zephyr Edge — Zephyr Dance End (all charges consumed)

tag @s remove ec.sp_zephyr_dance
scoreboard players set @s ec.sp_charges 0

playsound minecraft:entity.lightning_bolt.thunder player @a ~ ~ ~ 0.8 1.5
particle electric_spark ~ ~1 ~ 1 1 1 0.1 20
title @s actionbar [{"text":"Zephyr Dance complete!","color":"gold"}]
