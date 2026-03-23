# Gaster Blaster — OBLIVION (Mythical)
# Void Zone: 7-block radius for 5s — Wither III + Levitation II + Slowness IV + Glowing
# Final collapse burst after 5 seconds
# @s = player

# Create void zone at hit entity location
execute as @e[type=!player,sort=nearest,limit=1,distance=..100,nbt={HurtTime:10s}] at @s run function evercraft:artifacts/archer/overcharge/oblivion_zone
