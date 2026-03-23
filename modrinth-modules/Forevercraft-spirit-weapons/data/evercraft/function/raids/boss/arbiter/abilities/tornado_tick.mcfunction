# Arbiter — Tornado Tick (Phase 3 storm)
# Tornado chases nearest player, deals damage on contact

# Move tornado toward nearest player
execute as @e[tag=ec.rd_arb_tornado,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.3

# Tornado particles
execute as @e[tag=ec.rd_arb_tornado,limit=1] at @s run particle minecraft:cloud ~ ~0 ~ 0.5 1.5 0.5 0.15 8
execute as @e[tag=ec.rd_arb_tornado,limit=1] at @s run particle minecraft:white_ash ~ ~1 ~ 1 2 1 0.2 5

# Damage on contact (2 blocks)
execute as @e[tag=ec.rd_arb_tornado,limit=1] at @s run execute as @a[tag=ec.rd_participant,distance=..2] run damage @s 6 minecraft:out_of_world

# Knockback on contact
execute as @e[tag=ec.rd_arb_tornado,limit=1] at @s as @a[tag=ec.rd_participant,distance=..2] at @s facing entity @e[tag=ec.rd_arb_tornado,limit=1] feet run tp @s ^ ^ ^-1.5

# Sound
execute as @e[tag=ec.rd_arb_tornado,limit=1] at @s run playsound minecraft:entity.wind_charge.wind_burst hostile @a[tag=ec.rd_participant,distance=..10] ~ ~ ~ 0.3 1.5
