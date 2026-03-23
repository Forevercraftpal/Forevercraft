# Primal Roar — Boneclub (Common Beastlord)
# Every 10th hit: all mobs in 6 blocks get Weakness I + Slowness I (3s)
# Audio: ravager roar — the boneclub unleashes a terrifying cry

advancement revoke @s only evercraft:artifacts/abilities/primal_roar_trigger

# Increment hit counter
scoreboard players add @s ec.primal_roar 1

# Small feedback per hit (building tension)
execute at @s run particle ash ~ ~0.5 ~ 0.2 0.2 0.2 0.01 3

# Every 10th hit: AoE roar!
execute if score @s ec.primal_roar matches 10.. at @s as @e[type=!player,distance=..6,limit=15] run effect give @s weakness 3 0 false
execute if score @s ec.primal_roar matches 10.. at @s as @e[type=!player,distance=..6,limit=15] run effect give @s slowness 3 0 false
execute if score @s ec.primal_roar matches 10.. at @s run particle explosion ~ ~1 ~ 1 0.5 1 0.1 8
execute if score @s ec.primal_roar matches 10.. at @s run particle ash ~ ~1 ~ 1.5 1 1.5 0.05 30
execute if score @s ec.primal_roar matches 10.. run playsound minecraft:entity.ravager.roar hostile @a[distance=..32] ~ ~ ~ 0.8 0.7

# Reset counter
execute if score @s ec.primal_roar matches 10.. run scoreboard players set @s ec.primal_roar 0

# Achievement tracking
scoreboard players add @s ach.weapon_abilities 1
