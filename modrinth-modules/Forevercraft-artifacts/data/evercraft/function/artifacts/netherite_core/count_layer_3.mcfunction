# Count 7x7 layer (49 blocks)
execute store result score #temp anc.blocks run fill ~-3 ~ ~-3 ~3 ~ ~3 minecraft:netherite_block replace minecraft:netherite_block
execute store result score #temp2 anc.blocks run scoreboard players get #temp anc.blocks
scoreboard players operation #anc_count anc.blocks += #temp anc.blocks
