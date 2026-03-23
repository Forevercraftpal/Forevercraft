# Storm Sow — Vortex Hoe
# On hit: Channel the wind — Speed II + Jump Boost
advancement revoke @s only evercraft:artifacts/abilities/storm_sow_trigger
effect give @s speed 8 1 false
effect give @s jump_boost 8 1 false
execute at @s run particle cloud ~ ~1 ~ 0.5 0.5 0.5 0.05 10
playsound minecraft:entity.breeze.charge player @s ~ ~ ~ 0.5 1.2

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
