# Fire Check Hit - Bounding box verification for entity detection
# Confirms entity is actually within the beam's hitbox before applying damage

execute if score #df_hit ec.var matches 0 positioned ~-0.9 ~-0.9 ~-0.9 if entity @s[dx=0] positioned ~0.95 ~0.95 ~0.95 run function evercraft:artifacts/abilities/dragon_fan/fire_hit_entity with storage evercraft:treasure/write data
