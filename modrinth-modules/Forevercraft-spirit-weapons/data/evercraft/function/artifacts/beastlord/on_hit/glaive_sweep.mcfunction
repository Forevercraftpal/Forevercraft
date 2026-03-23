# Glaive — Sweep damage to nearby entity
# Runs as each swept entity (not the primary target)

damage @s 2 minecraft:mob_attack
execute at @s run particle sweep_attack ~ ~0.5 ~ 0.2 0.2 0.2 0.3 2
