# Gatekeeper — Whirlwind Attack (Phase 3)
# 360° slash hitting all entities in 5-block radius, 10 damage

# Warning
tellraw @a[tag=ec.rd_participant] [{"text":"  ⚠ ","color":"red"},{"text":"The Gatekeeper unleashes a whirlwind!","color":"dark_green","bold":true}]

# AoE damage — 5 block radius
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..5] run damage @s 10 minecraft:mob_attack by @e[type=!player,tag=ec.rd_boss,limit=1]

# Heavy knockback away from boss
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s as @a[tag=ec.rd_participant,distance=..5] at @s facing entity @e[type=!player,tag=ec.rd_boss,limit=1] feet run tp @s ^ ^ ^-3

# VFX — whirlwind
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:sweep_attack ~ ~1 ~ 3 0.5 3 0 10
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run particle minecraft:cloud ~ ~1 ~ 4 1 4 0.2 30
execute as @e[type=!player,tag=ec.rd_boss,limit=1] at @s run playsound minecraft:entity.player.attack.sweep hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.4
