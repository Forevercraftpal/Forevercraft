# Berserker — Rage Cooldown Ready Notification
# OPT: Consolidates 3 @a[tag=ec.bk_active,scores={ec.bk_cd=0}] scans into 1
# Run as: player with ec.bk_active tag and ec.bk_cd=0, at player

playsound minecraft:block.note_block.bass player @s ~ ~ ~ 0.5 0.8
title @s actionbar {"text":"Rage ready!","color":"dark_red","bold":true}
# Zero out so notification only fires once
scoreboard players set @s ec.bk_cd -1
