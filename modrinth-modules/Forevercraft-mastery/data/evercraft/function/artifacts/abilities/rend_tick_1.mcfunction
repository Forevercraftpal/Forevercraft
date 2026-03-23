# Rend Bleed Tick 1 — 2s after initial hit
execute as @e[tag=ec.bleeding] at @s run damage @s 1 minecraft:generic
execute as @e[tag=ec.bleeding] at @s run particle damage_indicator ~ ~1 ~ 0.2 0.2 0.2 0.05 3
