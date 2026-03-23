# Ancient Netherite Core - Per-player effect application
# OPT: return run per level — 4 enderchest scans max instead of 28

# === Level 4: All beacon effects at Level II (Regen stays at I) ===
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:4b}] run return run function evercraft:artifacts/netherite_core/apply_level4

# === Level 3: All beacon effects at Level I ===
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:3b}] run return run function evercraft:artifacts/netherite_core/apply_level3

# === Level 2: Speed I + Haste I + Resistance I + Strength I ===
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:2b}] run return run function evercraft:artifacts/netherite_core/apply_level2

# === Level 1: Speed I + Haste I ===
execute if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b,level:1b}] run return run function evercraft:artifacts/netherite_core/apply_level1
