# ============================================================
# SPIRIT TOME QUEST SYSTEM — Load Function
# ============================================================

# Core quest tracking scoreboards
scoreboard objectives add ec.sq_part dummy "Spirit Quest Part"
scoreboard objectives add ec.sq_active dummy "Spirit Quest Active"
scoreboard objectives add ec.sq_progress dummy "Spirit Quest Progress"
scoreboard objectives add ec.sq_target dummy "Spirit Quest Target"
scoreboard objectives add ec.sq_type dummy "Spirit Quest Type"
scoreboard objectives add ec.sq_snap dummy "Spirit Quest Stat Snapshot"
scoreboard objectives add ec.sq_sub dummy "Spirit Quest Subtype"
scoreboard objectives add ec.sq_has_tome dummy "Has Spirit Tome"
scoreboard objectives add ec.sq_cd dummy "Spirit Tome Use Cooldown"
scoreboard objectives add ec.sq_grace dummy "Spirit Quest Grace Period"

# Stat objectives for delta tracking (vanilla criteria)
scoreboard objectives add ec.sq_mkills minecraft.custom:minecraft.mob_kills "Total Mob Kills"
scoreboard objectives add ec.sq_walk minecraft.custom:minecraft.walk_one_cm "Walk Distance"
scoreboard objectives add ec.sq_jump minecraft.custom:minecraft.jump "Jumps"
scoreboard objectives add ec.sq_swim minecraft.custom:minecraft.swim_one_cm "Swim Distance"
scoreboard objectives add ec.sq_sprint minecraft.custom:minecraft.sprint_one_cm "Sprint Distance"
scoreboard objectives add ec.sq_fish minecraft.custom:minecraft.fish_caught "Fish Caught"
scoreboard objectives add ec.sq_sneak minecraft.custom:minecraft.sneak_time "Sneak Time"
scoreboard objectives add ec.sq_mine_stone minecraft.mined:minecraft.stone "Stone Mined"
scoreboard objectives add ec.sq_mine_ds minecraft.mined:minecraft.deepslate "Deepslate Mined"
scoreboard objectives add ec.sq_mine_iron minecraft.mined:minecraft.iron_ore "Iron Ore Mined"
scoreboard objectives add ec.sq_mine_di_iron minecraft.mined:minecraft.deepslate_iron_ore "DS Iron Ore Mined"
scoreboard objectives add ec.sq_mine_diamond minecraft.mined:minecraft.diamond_ore "Diamond Ore Mined"
scoreboard objectives add ec.sq_mine_di_dia minecraft.mined:minecraft.deepslate_diamond_ore "DS Diamond Ore Mined"
scoreboard objectives add ec.sq_use_shears minecraft.used:minecraft.shears "Shears Used"
scoreboard objectives add ec.sq_trident minecraft.used:minecraft.trident "Tridents Thrown"
scoreboard objectives add ec.sq_use_torch minecraft.used:minecraft.torch "Torches Placed"
scoreboard objectives add ec.sq_use_anvil minecraft.custom:minecraft.interact_with_anvil "Anvil Interactions"
scoreboard objectives add ec.sq_smelt minecraft.custom:minecraft.interact_with_furnace "Furnace Interactions"

# Kill stat objectives for specific mob quests
scoreboard objectives add ec.sq_kill_chicken minecraft.killed:minecraft.chicken "Chickens Killed"
scoreboard objectives add ec.sq_kill_enderman minecraft.killed:minecraft.enderman "Endermen Killed"
scoreboard objectives add ec.sq_kill_sheep minecraft.killed:minecraft.sheep "Sheep Killed"

# Dungeon floor record (per-player, updated by dungeon system hook)
scoreboard objectives add ec.sq_dg_best dummy "Dungeon Floor Record"

# Quest type constants (for reference in route files)
# Type 1  = stat_delta (generic — snapshot a stat, track delta)
# Type 2  = threshold (check existing scoreboard >= target)
# Type 3  = interact  (per-quest one-off condition check)
# Type 4  = meta      (multi-condition / special logic)
#
# Subtypes for type 1 (stat_delta):
#   1=mob_kills, 2=walk, 3=jump, 4=swim, 5=sprint, 6=fish
#   7=mine_stone, 8=mine_iron, 9=mine_diamond, 10=kill_chicken
#   11=kill_enderman, 12=shears, 13=torch_place, 14=trident_throw
#   15=smelt, 16=anvil, 17=sneak_time
#
# Subtypes for type 2 (threshold):
#   1=dungeon_floor, 2=castle_floor, 3=biomes_visited, 4=fish_caught
#   5=quests_done, 6=companions_owned, 7=crops_harvested, 8=structures_found
#   9=advantage_level, 10=crates_opened, 11=pet_relationship
#   12=food_eaten, 13=kills_total, 14=profession_level
#
# Subtypes for type 3 (interact — quest part IS the subtype, checked directly)
# Subtypes for type 4 (meta — quest part IS the subtype, checked directly)

# Start self-scheduling progress check (runs every 1s)
schedule function evercraft:spirit_tome/check_progress 1s replace
