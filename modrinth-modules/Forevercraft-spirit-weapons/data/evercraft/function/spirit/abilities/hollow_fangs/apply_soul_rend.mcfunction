# Hollow Fangs — Apply Soul Rend to target entity
# Run as @s (the target mob)
# Makes target take more damage: Glowing (visual) + Weakness II (functional)

# Spirit tier: 8 seconds, normal: 5 seconds
effect give @s glowing 5 0
effect give @s weakness 5 1

# Tag for visual tracking
tag @s add ec.soul_rend
