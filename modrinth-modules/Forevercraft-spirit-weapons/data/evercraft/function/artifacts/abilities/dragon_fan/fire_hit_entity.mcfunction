# Fire Hit Entity - Direct hit on an entity with fire laser
# 50 damage + ignition (5 seconds)

scoreboard players set #df_hit ec.var 1

# Fire particle explosion at hit location
particle flame ~ ~ ~ 0.5 0.5 0.5 0.1 500 force @a
particle lava ~ ~ ~ 0.3 0.3 0.3 0 20 force @a

# 50 magic damage attributed to player
$damage @s 50 minecraft:magic by $(hexUUID)

# Ignite target (5 seconds = 100 ticks)
data merge entity @s {Fire:100s}
