# Check netherite block count beneath the item frame
# Uses area scanning to count netherite blocks

scoreboard players set #anc_count anc.blocks 0

# Count netherite blocks in expanding pyramid pattern
# Layer 1 (directly below, 3x3)
execute if block ~-1 ~-1 ~-1 minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~ ~-1 ~-1 minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~1 ~-1 ~-1 minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~-1 ~-1 ~ minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~ ~-1 ~ minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~1 ~-1 ~ minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~-1 ~-1 ~1 minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~ ~-1 ~1 minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1
execute if block ~1 ~-1 ~1 minecraft:netherite_block run scoreboard players add #anc_count anc.blocks 1

# Layer 2 (5x5, additional 16 blocks around layer 1)
execute positioned ~ ~-2 ~ run function evercraft:artifacts/netherite_core/count_layer_2

# Layer 3 (7x7, additional blocks)
execute positioned ~ ~-3 ~ run function evercraft:artifacts/netherite_core/count_layer_3

# Layer 4 (9x9, additional blocks)
execute positioned ~ ~-4 ~ run function evercraft:artifacts/netherite_core/count_layer_4

# Determine level based on block count
execute if score #anc_count anc.blocks matches 244.. run function evercraft:artifacts/netherite_core/set_level_4
execute if score #anc_count anc.blocks matches 134..243 run function evercraft:artifacts/netherite_core/set_level_3
execute if score #anc_count anc.blocks matches 34..133 run function evercraft:artifacts/netherite_core/set_level_2
execute if score #anc_count anc.blocks matches 9..33 run function evercraft:artifacts/netherite_core/set_level_1
