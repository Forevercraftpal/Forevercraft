# Artisan Tome — Stat delta check (Type 1)
# Reads current stat value, subtracts snapshot, compares to target

# Read current stat based on subtype into #tq_cur
# 1: Stone + deepslate
execute if score @s ec.tq_sub matches 1 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/stone
# 2: Iron + deepslate
execute if score @s ec.tq_sub matches 2 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/iron
# 3: Diamond + deepslate
execute if score @s ec.tq_sub matches 3 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/diamond
# 4: Coal + deepslate
execute if score @s ec.tq_sub matches 4 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/coal
# 5: Copper + deepslate
execute if score @s ec.tq_sub matches 5 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/copper
# 6: Fish caught
execute if score @s ec.tq_sub matches 6 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_fish
# 7: Logs combined
execute if score @s ec.tq_sub matches 7 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/logs
# 8: Wheat
execute if score @s ec.tq_sub matches 8 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_pick_wheat
# 9: Crops combined
execute if score @s ec.tq_sub matches 9 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/crops
# 10: Dirt + grass
execute if score @s ec.tq_sub matches 10 run function evercraft:craftforever/spirit_tools/tome/quests/types/read/dirt
# 11: Sand
execute if score @s ec.tq_sub matches 11 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_sand
# 12: Gravel
execute if score @s ec.tq_sub matches 12 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_gravel
# 13: Shears used
execute if score @s ec.tq_sub matches 13 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_use_shears
# 14: Blocks placed
execute if score @s ec.tq_sub matches 14 store result score #tq_cur ec.var run scoreboard players get @s ach.blocks_placed
# 15: Deepslate
execute if score @s ec.tq_sub matches 15 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_ds
# 16: Melon
execute if score @s ec.tq_sub matches 16 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_pick_melon
# 17: Nether wart
execute if score @s ec.tq_sub matches 17 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_pick_nwart
# 18: Redstone
execute if score @s ec.tq_sub matches 18 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_red
# 19: Lapis
execute if score @s ec.tq_sub matches 19 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_lapis
# 20: Emerald
execute if score @s ec.tq_sub matches 20 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_emer
# 21: Ancient debris
execute if score @s ec.tq_sub matches 21 store result score #tq_cur ec.var run scoreboard players get @s ec.tq_mine_debris

# Compute delta: progress = current - snapshot
scoreboard players operation @s ec.tq_progress = #tq_cur ec.var
scoreboard players operation @s ec.tq_progress -= @s ec.tq_snap

# Check completion
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
