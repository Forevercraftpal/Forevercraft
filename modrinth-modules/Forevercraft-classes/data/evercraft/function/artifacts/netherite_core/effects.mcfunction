# Ancient Netherite Core - Apply effects based on level
# OPT: Batched 18 @a scans into 1 per-player function call

execute as @a if items entity @s enderchest.* minecraft:stick[custom_data~{ancient_netherite_core:1b}] run function evercraft:artifacts/netherite_core/effects_player

schedule function evercraft:artifacts/netherite_core/effects 1s
