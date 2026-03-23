# === SILKGRASP — SHEAR SINGLE SHEEP ===
# Run as sheep, at sheep. Shears it and spawns 3x wool drops.

# Set sheep as sheared
data merge entity @s {Sheared:1b}

# Spawn 3x wool (3 items of 3 wool each = 9 total, triple the normal 1-3)
loot spawn ~ ~1 ~ loot minecraft:entities/sheep
loot spawn ~ ~1 ~ loot minecraft:entities/sheep
loot spawn ~ ~1 ~ loot minecraft:entities/sheep

# Particles + sound per sheep
particle item{item:{id:"minecraft:white_wool"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 5
playsound minecraft:entity.sheep.shear player @a[distance=..8] ~ ~ ~ 0.8 1.0
