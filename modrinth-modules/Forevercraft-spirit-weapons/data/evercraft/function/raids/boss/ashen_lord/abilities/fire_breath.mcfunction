# The Ashen Lord — Fire Breath (cone attack)
# Called as boss entity at boss position
# Damages players in a line in front of boss (5-block range, 8 damage + ignite 3s)

# Sound cue
playsound minecraft:entity.blaze.shoot master @a[tag=ec.rd_participant] ~ ~ ~ 1.5 0.6

# Particle cone — expanding rings along the boss's facing direction
execute anchored eyes positioned ^ ^ ^1 run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0.05 5
execute anchored eyes positioned ^ ^ ^2 run particle minecraft:flame ~ ~ ~ 0.6 0.3 0.6 0.05 8
execute anchored eyes positioned ^ ^ ^3 run particle minecraft:flame ~ ~ ~ 0.9 0.3 0.9 0.05 10
execute anchored eyes positioned ^ ^ ^4 run particle minecraft:flame ~ ~ ~ 1.2 0.3 1.2 0.05 12
execute anchored eyes positioned ^ ^ ^5 run particle minecraft:flame ~ ~ ~ 1.5 0.3 1.5 0.05 15

# Damage + ignite — check at 3 points along the ray with expanding radius
execute anchored eyes positioned ^ ^ ^2 run execute as @a[tag=ec.rd_participant,distance=..2] run damage @s 8 minecraft:on_fire by @e[type=wither_skeleton,tag=ec.rd_boss,limit=1]
execute anchored eyes positioned ^ ^ ^3.5 run execute as @a[tag=ec.rd_participant,distance=..2.5] run damage @s 8 minecraft:on_fire by @e[type=wither_skeleton,tag=ec.rd_boss,limit=1]
execute anchored eyes positioned ^ ^ ^5 run execute as @a[tag=ec.rd_participant,distance=..3] run damage @s 8 minecraft:on_fire by @e[type=wither_skeleton,tag=ec.rd_boss,limit=1]

# Ignite hit players for 3 seconds (60 fire ticks)
execute anchored eyes positioned ^ ^ ^3 as @a[tag=ec.rd_participant,distance=..4] run data merge entity @s {Fire:60s}
