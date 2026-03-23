# Kelp Harvest — Prismarine Hoe
# On hit: Grants aquatic buffs
advancement revoke @s only evercraft:artifacts/abilities/kelp_harvest_trigger
effect give @s dolphins_grace 10 0 false
effect give @s water_breathing 10 0 false
execute at @s run particle fishing ~ ~0.5 ~ 0.5 0.3 0.5 0 8
playsound minecraft:entity.dolphin.play player @s ~ ~ ~ 0.5 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
