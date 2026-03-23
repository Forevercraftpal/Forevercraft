# === SILKGRASP — SHEAR MOOSHROOM ===
# Run as mooshroom, at mooshroom. Spawns mushrooms and converts to cow.

# Spawn mushroom drops
loot spawn ~ ~1 ~ loot minecraft:shearing/mooshroom
loot spawn ~ ~1 ~ loot minecraft:shearing/mooshroom
loot spawn ~ ~1 ~ loot minecraft:shearing/mooshroom

# Convert to cow (summon cow, kill mooshroom)
summon cow ~ ~ ~ {Tags:["ec.st_converted"]}
kill @s

# Particles
particle item{item:{id:"minecraft:red_mushroom"}} ~ ~0.5 ~ 0.3 0.3 0.3 0.1 5
