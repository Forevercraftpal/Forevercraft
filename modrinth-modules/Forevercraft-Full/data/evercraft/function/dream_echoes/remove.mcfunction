# Dream Echo — Remove
# Run as the interaction entity, at its position
# Kills paired marker + self, plays shear effect

# Kill paired marker
kill @e[type=marker,tag=ec.dream_echo,distance=..2,limit=1]

# Removal effects
particle poof ~ ~0.5 ~ 0.3 0.3 0.3 0.05 15
playsound minecraft:entity.sheep.shear master @a[distance=..16] ~ ~ ~ 0.8 1.0

# Kill self (interaction entity)
kill @s
