# Warden Ring — Strength II + Darkness Immunity (Exquisite)
# Harmony: yields to compounded strength if 2+ sources
execute if score @s ec.h_str matches ..1 run effect give @s strength 15 1 false
# Always clear darkness regardless of harmony
effect clear @s darkness
