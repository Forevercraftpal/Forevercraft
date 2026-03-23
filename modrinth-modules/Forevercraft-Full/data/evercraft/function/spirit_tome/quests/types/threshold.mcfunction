# Spirit Tome — Threshold check (Type 2)
# Reads an existing scoreboard value and checks if >= target

# Sub 1: Dungeon floor record (per-player highest floor)
execute if score @s ec.sq_sub matches 1 store result score @s ec.sq_progress run scoreboard players get @s ec.sq_dg_best
# Sub 2: Castle floor record
execute if score @s ec.sq_sub matches 2 store result score @s ec.sq_progress run scoreboard players get @s ic.record
# Sub 3: Biomes visited
execute if score @s ec.sq_sub matches 3 store result score @s ec.sq_progress run scoreboard players get @s ach.biomes_visited
# Sub 4: Total fish caught (lifetime)
execute if score @s ec.sq_sub matches 4 store result score @s ec.sq_progress run scoreboard players get @s ach.fish_caught
# Sub 5: Village quests completed
execute if score @s ec.sq_sub matches 5 store result score @s ec.sq_progress run scoreboard players get @s ach.quests_done
# Sub 6: Companions owned/discovered
execute if score @s ec.sq_sub matches 6 store result score @s ec.sq_progress run scoreboard players get @s ach.comp_owned
# Sub 7: NOT USED
# Sub 8: Structures found
execute if score @s ec.sq_sub matches 8 store result score @s ec.sq_progress run scoreboard players get @s ach.structures_found
# Sub 9: Advantage tree levels (uses ach.total_levels)
execute if score @s ec.sq_sub matches 9 store result score @s ec.sq_progress run scoreboard players get @s ach.total_levels
# Sub 10: Crates opened
execute if score @s ec.sq_sub matches 10 store result score @s ec.sq_progress run scoreboard players get @s ach.crates_opened
# Sub 11: Pet highest relationship level
execute if score @s ec.sq_sub matches 11 store result score @s ec.sq_progress run scoreboard players get @s ach.comp_bonded
# Sub 12: Food eaten
execute if score @s ec.sq_sub matches 12 store result score @s ec.sq_progress run scoreboard players get @s ach.food_eaten
# Sub 13: NOT USED
# Sub 14: Profession level (placeholder — uses rep rank as proxy)
execute if score @s ec.sq_sub matches 14 store result score @s ec.sq_progress run scoreboard players get @s ec.rep_rank
# Sub 15: Dungeon runs completed
execute if score @s ec.sq_sub matches 15 store result score @s ec.sq_progress run scoreboard players get @s ach.dungeons_done
# Sub 16: Meals cooked
execute if score @s ec.sq_sub matches 16 store result score @s ec.sq_progress run scoreboard players get @s ach.meals_cooked
# Sub 17: Runes forged
execute if score @s ec.sq_sub matches 17 store result score @s ec.sq_progress run scoreboard players get @s ach.runes_forged
# Sub 18: Prestige count (sum across all prestige scoreboards — simplified to combat prestige)
execute if score @s ec.sq_sub matches 18 store result score @s ec.sq_progress run scoreboard players get @s ach.prestige_combat
# Sub 19: Duel wins
execute if score @s ec.sq_sub matches 19 store result score @s ec.sq_progress run scoreboard players get @s ec.sp_duel_wins
# Sub 20: Total advantage tree levels (all 13 trees combined)
execute if score @s ec.sq_sub matches 20 store result score @s ec.sq_progress run scoreboard players get @s ach.total_levels

# Check completion
execute if score @s ec.sq_progress >= @s ec.sq_target run function evercraft:spirit_tome/complete
