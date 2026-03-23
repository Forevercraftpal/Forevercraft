# Fantasy Trident (Ornate) — Melee: Conduit's Touch
# Conduit Power (8s) on self
# Cooldown: 15s

scoreboard players set @s ec.jv_cd 15

effect give @s conduit_power 8 0 false
execute at @s run particle nautilus ~ ~1 ~ 0.5 0.5 0.5 0.05 12
playsound minecraft:block.conduit.activate player @s ~ ~ ~ 0.6 1.2

scoreboard players add @s ach.weapon_abilities 1
