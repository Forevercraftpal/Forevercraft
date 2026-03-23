# Scale creeper ExplosionRadius based on gear DR
# Default is 3, scaling up with difficulty
# Charged creepers already double explosion power, so cap them lower
# Run as: creeper, uses #gear_dr ec.temp

# --- Charged creepers: capped 2 lower (min 4) to prevent insane devastation ---
execute if entity @s[nbt={powered:1b}] if score #gear_dr ec.temp matches 500.. run return run data modify entity @s ExplosionRadius set value 5b
execute if entity @s[nbt={powered:1b}] if score #gear_dr ec.temp matches 400..499 run return run data modify entity @s ExplosionRadius set value 4b
execute if entity @s[nbt={powered:1b}] run return run data modify entity @s ExplosionRadius set value 4b

# --- Normal creepers ---
execute if score #gear_dr ec.temp matches 500.. run return run data modify entity @s ExplosionRadius set value 7b
execute if score #gear_dr ec.temp matches 400..499 run return run data modify entity @s ExplosionRadius set value 6b
execute if score #gear_dr ec.temp matches 300..399 run return run data modify entity @s ExplosionRadius set value 5b
execute if score #gear_dr ec.temp matches 200..299 run return run data modify entity @s ExplosionRadius set value 4b
execute if score #gear_dr ec.temp matches 100..199 run data modify entity @s ExplosionRadius set value 4b
