# The Iron Phalanx — Last Centurion Alternating Attack
# Run as boss at boss. Alternates between trident thrust (12 dmg, 4 range) and sword sweep (8 dmg, 3 AoE)

# Toggle attack type using parity of cooldown counter
scoreboard players add #ic_phalanx_atk ec.var 1

# Odd = trident thrust (single target, long range)
execute if score #ic_phalanx_atk ec.var matches 1 run damage @a[tag=ic.player,distance=..4,limit=1,sort=nearest] 12 minecraft:mob_attack by @s
execute if score #ic_phalanx_atk ec.var matches 1 run particle sweep_attack ^ ^1 ^2 0 0 0 0 1
execute if score #ic_phalanx_atk ec.var matches 1 run playsound minecraft:entity.player.attack.sweep master @a[distance=..15] ~ ~ ~ 0.8 0.6

# Even = sword sweep (AoE, 3-block radius)
execute if score #ic_phalanx_atk ec.var matches 2 as @a[tag=ic.player,distance=..3] run damage @s 8 minecraft:mob_attack
execute if score #ic_phalanx_atk ec.var matches 2 run particle sweep_attack ~ ~1 ~ 1 0.5 1 0.1 5
execute if score #ic_phalanx_atk ec.var matches 2 run playsound minecraft:entity.player.attack.crit master @a[distance=..15] ~ ~ ~ 0.8 0.8
execute if score #ic_phalanx_atk ec.var matches 2 run scoreboard players set #ic_phalanx_atk ec.var 0
