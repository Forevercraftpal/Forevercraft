# Hollow Sovereign — Sonic Boom Impact (at target player position)

# Warning particles (brief, 0.5 sec before impact)
particle minecraft:sonic_boom ~ ~1 ~ 0 0 0 0 1

# Damage all players in 4-block radius — 6 damage (3 hearts)
execute as @a[tag=ec.rd_participant,distance=..4] run damage @s 6 minecraft:sonic_boom by @e[tag=ec.rd_boss,limit=1]

# Impact VFX
particle minecraft:sculk_soul ~ ~0.5 ~ 2 0.5 2 0.05 20
particle minecraft:explosion ~ ~1 ~ 1 0.5 1 0.1 5

# Sound
playsound minecraft:entity.warden.sonic_boom hostile @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
