# Fire Hit Block - Beam hit a solid block
# Fire particle explosion + AoE damage + ignite nearby + place fire

scoreboard players set #df_hit ec.var 1

# Fire particle burst at impact
particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 500 force @a
particle lava ~ ~ ~ 0.3 0.3 0.3 0 20 force @a

# AoE fire damage to nearby entities (25 damage)
$execute as @e[type=!#evercraft:treasure/non_entity,distance=..1.5,tag=!ec.dragon_fire] run damage @s 25 minecraft:magic by $(hexUUID)

# Ignite nearby entities (3 seconds)
execute as @e[type=!#evercraft:treasure/non_entity,distance=..1.5,tag=!ec.dragon_fire] run data merge entity @s {Fire:60s}

# Place fire at impact
execute if block ~ ~ ~ air run setblock ~ ~ ~ fire
execute unless block ~ ~ ~ air if block ~ ~1 ~ air run setblock ~ ~1 ~ fire
