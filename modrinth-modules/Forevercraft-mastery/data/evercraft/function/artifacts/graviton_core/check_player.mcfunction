# Graviton Core — Per-player check (inventory OR offhand)
# OPT: Single @a scan, early exit on first match (was 2 @a scans)

execute if items entity @s inventory.* minecraft:nether_star[custom_data~{graviton_core:1b}] run return run function evercraft:artifacts/graviton_core/apply_effects
execute if items entity @s weapon.offhand minecraft:nether_star[custom_data~{graviton_core:1b}] run function evercraft:artifacts/graviton_core/apply_effects
