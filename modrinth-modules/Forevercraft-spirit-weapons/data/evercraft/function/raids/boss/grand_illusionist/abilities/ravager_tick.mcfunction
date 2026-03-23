# Grand Illusionist — Ravager Tick (Phase 3)
# Ravager charges toward nearest player

# Ravager moves toward nearest player
execute as @e[tag=ec.rd_gi_ravager,limit=1] at @s facing entity @a[tag=ec.rd_participant,sort=nearest,limit=1] feet run tp @s ^ ^ ^0.2

# Ravager particles
execute as @e[tag=ec.rd_gi_ravager,limit=1] at @s run particle minecraft:dust{color:[0.5,0.0,0.0],scale:1.5} ~ ~1 ~ 0.5 0.5 0.5 0.05 2
