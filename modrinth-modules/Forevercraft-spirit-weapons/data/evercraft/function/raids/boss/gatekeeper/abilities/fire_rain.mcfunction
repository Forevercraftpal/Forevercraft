# Gatekeeper — Fire Rain (Nether dimension effect)
# Damage all players every 40 ticks during Nether phase

scoreboard players add #rd_gk_fire_cd ec.var 1
execute unless score #rd_gk_fire_cd ec.var matches 40.. run return 0
scoreboard players set #rd_gk_fire_cd ec.var 0

# Damage all participants
execute as @a[tag=ec.rd_participant] run damage @s 1 minecraft:in_fire

# VFX
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:flame ~ ~8 ~ 8 0.5 8 0.02 20
execute at @e[type=marker,tag=rd.center,limit=1] run particle minecraft:falling_lava ~ ~6 ~ 5 1 5 0.01 5
