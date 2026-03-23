# Void Architect — Gravity Well Pull Effect
# Called as the well entity, at well position
# Pull players within 6 blocks toward the well center (horizontal only)

# Apply slow horizontal pull toward well
# "at @s" sets position to player, then "facing <wellX> <playerY> <wellZ>" flattens the vector
# Since we can't dynamically extract Y, use a simpler approach: pull with a small value
# that won't clip through floors, and accept minor vertical drift
execute as @a[tag=ec.rd_participant,distance=..6] at @s facing entity @e[tag=ec.rd_well,sort=nearest,limit=1] feet run tp @s ^ ^ ^-0.12

# Damage on very close contact (1 block)
execute as @a[tag=ec.rd_participant,distance=..1] run damage @s 2 minecraft:out_of_world

# Ambient particles
particle minecraft:reverse_portal ~ ~ ~ 1.5 0.5 1.5 0.05 5
particle minecraft:portal ~ ~ ~ 2 0.5 2 0.3 3
