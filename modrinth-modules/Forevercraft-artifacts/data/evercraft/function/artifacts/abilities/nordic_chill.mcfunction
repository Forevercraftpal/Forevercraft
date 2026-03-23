# Nordic Chill — Norroen Sword (Common Knight)
# On hit: 25% chance to apply Slowness II (3s) + snowflake particles

advancement revoke @s only evercraft:artifacts/abilities/nordic_chill_trigger

# 25% chance (1 in 4)
execute store result score @s ec.artifact_roll run random value 1..4
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s slowness 3 1 false
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle snowflake ~ ~1 ~ 0.3 0.5 0.3 0.05 12
execute if score @s ec.artifact_roll matches 1 run playsound minecraft:entity.player.hurt_freeze player @s ~ ~ ~ 0.6 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
