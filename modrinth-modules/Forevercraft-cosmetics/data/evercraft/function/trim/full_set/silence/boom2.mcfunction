# Sonic boom damage and particles at this position
particle minecraft:sonic_boom ~ ~ ~ 0.125 0.125 0.125 1 1 force

# Damage ONLY mobs (entities with Brain = mobs, not players)
execute as @e[type=!player,distance=..2] if data entity @s Brain run damage @s 10 sonic_boom

schedule function evercraft:trim/full_set/silence/boom3 1t replace