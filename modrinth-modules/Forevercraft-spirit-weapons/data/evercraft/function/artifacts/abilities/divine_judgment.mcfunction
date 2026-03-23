# Divine Judgment — Ban Hammer
# 33% chance to smite target with lightning + launch upward
# (Striker: 50% at 50+ Impact, guaranteed at 75+ Impact)
advancement revoke @s only evercraft:artifacts/abilities/divine_judgment_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: guaranteed smite + launch
execute if score @s ec.sk_impact matches 75.. at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s levitation 1 5 false
execute if score @s ec.sk_impact matches 75.. at @s run particle explosion_emitter ~ ~1 ~
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.5 1.2
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: 50% chance (1 in 2) smite + launch
execute if score @s ec.sk_impact matches 50..74 store result score @s ec.artifact_roll run random value 1..2
execute if score @s ec.sk_impact matches 50..74 if score @s ec.artifact_roll matches 1 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.sk_impact matches 50..74 if score @s ec.artifact_roll matches 1 at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s levitation 1 5 false
execute if score @s ec.sk_impact matches 50..74 if score @s ec.artifact_roll matches 1 at @s run particle explosion_emitter ~ ~1 ~
execute if score @s ec.sk_impact matches 50..74 if score @s ec.artifact_roll matches 1 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.4 1.3
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: 33% chance (1 in 3) smite + launch
execute store result score @s ec.artifact_roll run random value 1..3
execute if score @s ec.artifact_roll matches 1 at @s at @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run summon lightning_bolt ~ ~ ~
execute if score @s ec.artifact_roll matches 1 at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s levitation 1 5 false
execute if score @s ec.artifact_roll matches 1 at @s run particle explosion_emitter ~ ~1 ~
execute if score @s ec.artifact_roll matches 1 run playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..30] ~ ~ ~ 0.3 1.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
