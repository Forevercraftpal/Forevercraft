# Artisan Tome — Threshold check (Type 2)
# Reads an existing scoreboard value and checks if >= target

# Sub 1: Blocks mined (lifetime)
execute if score @s ec.tq_sub matches 1 store result score @s ec.tq_progress run scoreboard players get @s ach.blocks_mined
# Sub 2: Crops harvested (lifetime)
execute if score @s ec.tq_sub matches 2 store result score @s ec.tq_progress run scoreboard players get @s ach.crops_harvested
# Sub 3: Fish caught (lifetime)
execute if score @s ec.tq_sub matches 3 store result score @s ec.tq_progress run scoreboard players get @s ach.fish_caught
# Sub 4: Blocks placed (lifetime)
execute if score @s ec.tq_sub matches 4 store result score @s ec.tq_progress run scoreboard players get @s ach.blocks_placed
# Sub 5: Meals cooked (lifetime)
execute if score @s ec.tq_sub matches 5 store result score @s ec.tq_progress run scoreboard players get @s ach.meals_cooked
# Sub 6: Crates opened (lifetime)
execute if score @s ec.tq_sub matches 6 store result score @s ec.tq_progress run scoreboard players get @s ach.crates_opened
# Sub 7: Structures found (lifetime)
execute if score @s ec.tq_sub matches 7 store result score @s ec.tq_progress run scoreboard players get @s ach.structures_found
# Sub 8: Biomes visited (lifetime)
execute if score @s ec.tq_sub matches 8 store result score @s ec.tq_progress run scoreboard players get @s ach.biomes_visited
# Sub 9: Artisan Rank
execute if score @s ec.tq_sub matches 9 store result score @s ec.tq_progress run scoreboard players get @s ec.cf_rank
# Sub 10: Trades done
execute if score @s ec.tq_sub matches 10 store result score @s ec.tq_progress run scoreboard players get @s ach.trades_done
# Sub 11: Biome nodes found
execute if score @s ec.tq_sub matches 11 store result score @s ec.tq_progress run scoreboard players get @s ec.cf_nodes_found
# Sub 12: Forages done
execute if score @s ec.tq_sub matches 12 store result score @s ec.tq_progress run scoreboard players get @s ach.forages_done
# Sub 13: Prospects done
execute if score @s ec.tq_sub matches 13 store result score @s ec.tq_progress run scoreboard players get @s ach.prospects_done
# Sub 14: Self-referencing (tq_part — for milestone meta-checks)
execute if score @s ec.tq_sub matches 14 store result score @s ec.tq_progress run scoreboard players get @s ec.tq_part

# Check completion
execute if score @s ec.tq_progress >= @s ec.tq_target run function evercraft:craftforever/spirit_tools/tome/complete
