# The Leviathan — Burrow Eruption
# Called as target player at their position

# Telegraph: bubble particles 2 seconds before
particle minecraft:bubble_pop ~ ~0.5 ~ 1 0.5 1 0.05 20
playsound minecraft:block.bubble_column.upwards_ambient master @s ~ ~ ~ 1.5 0.5

# Teleport boss to under the player and erupt
execute as @e[type=guardian,tag=ec.rd_boss,limit=1] run tp @s ~ ~-2 ~

# Damage in area
execute as @a[tag=ec.rd_participant,distance=..4] run damage @s 10 minecraft:mob_attack by @e[type=guardian,tag=ec.rd_boss,limit=1]

# Launch hit players upward
effect give @a[tag=ec.rd_participant,distance=..4] levitation 1 5

# Eruption VFX
particle minecraft:explosion ~ ~1 ~ 1 1 1 0.5 10
particle minecraft:splash ~ ~2 ~ 2 2 2 0.5 50
playsound minecraft:entity.generic.explode master @a[tag=ec.rd_participant] ~ ~ ~ 1.0 0.8
