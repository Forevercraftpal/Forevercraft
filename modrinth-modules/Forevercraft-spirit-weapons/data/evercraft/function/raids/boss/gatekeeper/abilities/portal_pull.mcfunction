# Gatekeeper — Portal Pull Effect
# Called as each portal entity, pulls nearby players toward it

# Pull players within 4 blocks
execute as @a[tag=ec.rd_participant,distance=..4] at @s facing entity @e[tag=ec.rd_gk_portal,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.12

# Damage on very close contact
execute as @a[tag=ec.rd_participant,distance=..1] run damage @s 4 minecraft:out_of_world

# Teleport players who enter the portal to a random position
execute as @a[tag=ec.rd_participant,distance=..0.5] run spreadplayers ~ ~ 3 10 false @s

# Particles
particle minecraft:portal ~ ~0.5 ~ 0.5 0.5 0.5 1 3
particle minecraft:reverse_portal ~ ~0.5 ~ 0.3 0.3 0.3 0.2 2
