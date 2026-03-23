# Armor Crush — Morning Star (Uncommon Berserker)
# On hit: 25% chance to apply Weakness I (3s) — crushing through armor

advancement revoke @s only evercraft:artifacts/abilities/armor_crush_trigger

# 25% chance (1 in 4)
execute store result score @s ec.artifact_roll run random value 1..4
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 3 0 false
execute if score @s ec.artifact_roll matches 1 as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0.1 8
execute if score @s ec.artifact_roll matches 1 run playsound minecraft:block.anvil.place player @s ~ ~ ~ 0.4 0.6

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
