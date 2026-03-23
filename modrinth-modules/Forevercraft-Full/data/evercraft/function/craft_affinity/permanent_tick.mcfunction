# === CRAFTING AFFINITY — PERMANENT TICK ===
# Applies permanent bonuses for Stage 7 classes (even without tool held)
# Runs every 40 ticks for all players. Run as/at player.

# === STONESTRIKE (Stage 7): Night Vision underground ===
execute if score @s ec.caffs_ss matches 7 if predicate evercraft:spirit/below_y_50 run effect give @s night_vision 5 0 true

# === LUMBERFELL (Stage 7): Regen I near trees (log within 8 blocks) ===
execute if score @s ec.caffs_lf matches 7 if block ~ ~1 ~ #minecraft:logs run effect give @s regeneration 5 0 true
execute if score @s ec.caffs_lf matches 7 if block ~4 ~2 ~ #minecraft:logs run effect give @s regeneration 5 0 true
execute if score @s ec.caffs_lf matches 7 if block ~-4 ~2 ~ #minecraft:logs run effect give @s regeneration 5 0 true
execute if score @s ec.caffs_lf matches 7 if block ~ ~2 ~4 #minecraft:logs run effect give @s regeneration 5 0 true

# === GROWSEER (Stage 7): Crop no-trample aura (cancel farmland trampling via saturation) ===
execute if score @s ec.caffs_gs matches 7 run effect give @s saturation 3 0 true

# === TERRAWARP (Stage 7): Slow Falling always ===
execute if score @s ec.caffs_tw matches 7 run effect give @s slow_falling 5 0 true

# === SIRENCALL (Stage 7): Water Breathing always ===
execute if score @s ec.caffs_sc matches 7 run effect give @s water_breathing 5 0 true

# === LAMENTOR (Stage 7): No specific permanent passive (silk touch is tool-only) ===
# Lamentor mastery gives +20% bonus wool from any shearing, handled in silkgrasp passive
