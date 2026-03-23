# Artisan Tome — Snapshot current stat value for delta tracking (type 1 quests)
# Subtype determines which stat to snapshot

# 1: Stone (stone + deepslate combined)
execute if score @s ec.tq_sub matches 1 run function evercraft:craftforever/spirit_tools/tome/quests/snap/stone
# 2: Iron ore (iron + deepslate combined)
execute if score @s ec.tq_sub matches 2 run function evercraft:craftforever/spirit_tools/tome/quests/snap/iron
# 3: Diamond ore (diamond + deepslate combined)
execute if score @s ec.tq_sub matches 3 run function evercraft:craftforever/spirit_tools/tome/quests/snap/diamond
# 4: Coal ore (coal + deepslate combined)
execute if score @s ec.tq_sub matches 4 run function evercraft:craftforever/spirit_tools/tome/quests/snap/coal
# 5: Copper ore (copper + deepslate combined)
execute if score @s ec.tq_sub matches 5 run function evercraft:craftforever/spirit_tools/tome/quests/snap/copper
# 6: Fish caught
execute if score @s ec.tq_sub matches 6 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_fish
# 7: Logs (all types combined)
execute if score @s ec.tq_sub matches 7 run function evercraft:craftforever/spirit_tools/tome/quests/snap/logs
# 8: Wheat harvested
execute if score @s ec.tq_sub matches 8 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_pick_wheat
# 9: Crops combined (carrot + potato + beetroot)
execute if score @s ec.tq_sub matches 9 run function evercraft:craftforever/spirit_tools/tome/quests/snap/crops
# 10: Dirt (dirt + grass_block combined)
execute if score @s ec.tq_sub matches 10 run function evercraft:craftforever/spirit_tools/tome/quests/snap/dirt
# 11: Sand
execute if score @s ec.tq_sub matches 11 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_sand
# 12: Gravel
execute if score @s ec.tq_sub matches 12 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_gravel
# 13: Shears used
execute if score @s ec.tq_sub matches 13 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_use_shears
# 14: Blocks placed (uses ach.blocks_placed)
execute if score @s ec.tq_sub matches 14 store result score @s ec.tq_snap run scoreboard players get @s ach.blocks_placed
# 15: Deepslate mined
execute if score @s ec.tq_sub matches 15 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_ds
# 16: Melon slices
execute if score @s ec.tq_sub matches 16 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_pick_melon
# 17: Nether wart
execute if score @s ec.tq_sub matches 17 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_pick_nwart
# 18: Redstone ore
execute if score @s ec.tq_sub matches 18 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_red
# 19: Lapis ore
execute if score @s ec.tq_sub matches 19 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_lapis
# 20: Emerald ore
execute if score @s ec.tq_sub matches 20 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_emer
# 21: Ancient debris
execute if score @s ec.tq_sub matches 21 store result score @s ec.tq_snap run scoreboard players get @s ec.tq_mine_debris
