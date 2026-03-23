# Shield Breaker — Combat Mace
# Applies Weakness II + removes Resistance from target
# (Striker: +Mining Fatigue II at 50+ Impact, doubled durations at 75+ Impact)
advancement revoke @s only evercraft:artifacts/abilities/shield_breaker_trigger

# === STRIKER IMPACT SCALING ===
# 75+ Impact: Weakness II 10s + Mining Fatigue II 10s + strip Resistance
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 10 1 false
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s mining_fatigue 10 1 false
execute if score @s ec.sk_impact matches 75.. at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect clear @s resistance
execute if score @s ec.sk_impact matches 75.. at @s run particle crit ~ ~1 ~ 0.5 0.5 0.5 0.1 20
execute if score @s ec.sk_impact matches 75.. run playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 1 0.3
execute if score @s ec.sk_impact matches 75.. run return 1

# 50-74 Impact: Weakness II 5s + Mining Fatigue II 5s + strip Resistance
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 5 1 false
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s mining_fatigue 5 1 false
execute if score @s ec.sk_impact matches 50..74 at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect clear @s resistance
execute if score @s ec.sk_impact matches 50..74 at @s run particle crit ~ ~1 ~ 0.4 0.4 0.4 0.1 15
execute if score @s ec.sk_impact matches 50..74 run playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 1 0.4
execute if score @s ec.sk_impact matches 50..74 run return 1

# Default: Weakness II 5s + strip Resistance
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect give @s weakness 5 1 false
execute at @s as @e[type=!player,distance=..5,limit=1,sort=nearest,nbt={HurtTime:10s}] run effect clear @s resistance
execute at @s run particle crit ~ ~1 ~ 0.3 0.3 0.3 0.1 10
playsound minecraft:entity.iron_golem.attack player @s ~ ~ ~ 1 0.5

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
