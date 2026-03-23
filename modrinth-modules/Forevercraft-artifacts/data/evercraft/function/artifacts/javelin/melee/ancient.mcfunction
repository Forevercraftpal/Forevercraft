# Ancient Trident (Rare) — Melee: Ocean's Favor
# Water Breathing (15s) + Dolphin's Grace (8s) on self
# Cooldown: 12s

scoreboard players set @s ec.jv_cd 12

effect give @s water_breathing 15 0 false
effect give @s dolphins_grace 8 0 false
execute at @s run particle bubble ~ ~1 ~ 0.3 0.5 0.3 0.1 10
playsound minecraft:entity.dolphin.ambient player @s ~ ~ ~ 0.5 1.0

scoreboard players add @s ach.weapon_abilities 1
