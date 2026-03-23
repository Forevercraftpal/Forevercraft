# Winter Harvest — Frost Hoe
# On hit: Grants Resistance + Speed
advancement revoke @s only evercraft:artifacts/abilities/winter_harvest_trigger
effect give @s resistance 8 0 false
effect give @s speed 8 1 false
execute at @s run particle snowflake ~ ~0.5 ~ 0.3 0.3 0.3 0.02 10
playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 0.4 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
