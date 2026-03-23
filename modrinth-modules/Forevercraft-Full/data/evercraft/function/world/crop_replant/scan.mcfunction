# Crop Seed Auto-Replant — Scan within 2 blocks for soil, plant crop above
# Macro function: called with {block:"...", soil:"..."}
# Checks positions in priority order (closest first), stops on first success
# Y=0 = item's block level, Y=-1 = one below (item on full block next to farmland)

# === Distance 0 (directly at item) ===
$execute if score #planted ec.temp matches 0 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 if block ~ ~-1 ~ $(soil) store success score #planted ec.temp run setblock ~ ~ ~ $(block) keep

# === Distance 1 (cardinal, Y=0) ===
$execute if score #planted ec.temp matches 0 positioned ~1 ~ ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~ ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~ ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~ ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 1 (cardinal, Y=-1) ===
$execute if score #planted ec.temp matches 0 positioned ~1 ~-1 ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~-1 ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~-1 ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~-1 ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 1 (diagonal, Y=0) ===
$execute if score #planted ec.temp matches 0 positioned ~1 ~ ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~1 ~ ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~ ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~ ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 1 (diagonal, Y=-1) ===
$execute if score #planted ec.temp matches 0 positioned ~1 ~-1 ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~1 ~-1 ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~-1 ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~-1 ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 2 (cardinal, Y=0) ===
$execute if score #planted ec.temp matches 0 positioned ~2 ~ ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~ ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~ ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~ ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 2 (cardinal, Y=-1) ===
$execute if score #planted ec.temp matches 0 positioned ~2 ~-1 ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~-1 ~ if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~-1 ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~ ~-1 ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 2 (edge, Y=0) ===
$execute if score #planted ec.temp matches 0 positioned ~2 ~ ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~2 ~ ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~ ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~ ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~1 ~ ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~ ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~1 ~ ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~ ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 2 (edge, Y=-1) ===
$execute if score #planted ec.temp matches 0 positioned ~2 ~-1 ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~2 ~-1 ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~-1 ~1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~-1 ~-1 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~1 ~-1 ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~-1 ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~1 ~-1 ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-1 ~-1 ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 2 (corners, Y=0) ===
$execute if score #planted ec.temp matches 0 positioned ~2 ~ ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~2 ~ ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~ ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~ ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep

# === Distance 2 (corners, Y=-1) ===
$execute if score #planted ec.temp matches 0 positioned ~2 ~-1 ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~2 ~-1 ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~-1 ~2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
$execute if score #planted ec.temp matches 0 positioned ~-2 ~-1 ~-2 if block ~ ~ ~ $(soil) store success score #planted ec.temp run setblock ~ ~1 ~ $(block) keep
