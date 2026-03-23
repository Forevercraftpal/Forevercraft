# Gatekeeper — Combo Strike
# Dual-sword melee attack on nearest player within 3 blocks

# Lunge toward nearest player
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.5

# Damage nearest in range
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run damage @a[tag=ec.rd_participant,distance=..3,limit=1,sort=nearest] 6 minecraft:mob_attack by @e[type=!player,tag=ec.rd_boss,limit=1]

# Apply Wither I in Nether dimension
execute if score #rd_gk_dim ec.var matches 1 as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run effect give @a[tag=ec.rd_participant,distance=..3] wither 3 0

# VFX
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s if entity @a[tag=ec.rd_participant,distance=..3] run particle minecraft:sweep_attack ~ ~1 ~ 0.5 0.3 0.5 0 2
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s if entity @a[tag=ec.rd_participant,distance=..3] run playsound minecraft:entity.player.attack.sweep hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 0.7 1.0
