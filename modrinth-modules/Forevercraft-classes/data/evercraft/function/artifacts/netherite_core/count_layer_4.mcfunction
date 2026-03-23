# Count 9x9 layer (81 blocks)
execute store result score #temp anc.blocks run fill ~-4 ~ ~-4 ~4 ~ ~4 minecraft:netherite_block replace minecraft:netherite_block
scoreboard players operation #anc_count anc.blocks += #temp anc.blocks
