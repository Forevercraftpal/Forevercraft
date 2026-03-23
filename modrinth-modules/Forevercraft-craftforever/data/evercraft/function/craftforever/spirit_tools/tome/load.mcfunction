# ============================================================
# ARTISAN TOME QUEST SYSTEM — Load Function
# ============================================================

# Core quest tracking scoreboards
scoreboard objectives add ec.tq_part dummy "Tool Quest Part"
scoreboard objectives add ec.tq_active dummy "Tool Quest Active"
scoreboard objectives add ec.tq_progress dummy "Tool Quest Progress"
scoreboard objectives add ec.tq_target dummy "Tool Quest Target"
scoreboard objectives add ec.tq_type dummy "Tool Quest Type"
scoreboard objectives add ec.tq_snap dummy "Tool Quest Stat Snapshot"
scoreboard objectives add ec.tq_sub dummy "Tool Quest Subtype"
scoreboard objectives add ec.tq_has_tome dummy "Has Artisan Tome"
scoreboard objectives add ec.tq_cd dummy "Artisan Tome Use Cooldown"
scoreboard objectives add ec.tq_grace dummy "Tool Quest Grace Period"

# Stat objectives for delta tracking — Mining
scoreboard objectives add ec.tq_mine_stone minecraft.mined:minecraft.stone "TQ Stone Mined"
scoreboard objectives add ec.tq_mine_ds minecraft.mined:minecraft.deepslate "TQ Deepslate Mined"
scoreboard objectives add ec.tq_mine_iron minecraft.mined:minecraft.iron_ore "TQ Iron Ore Mined"
scoreboard objectives add ec.tq_mine_di_iron minecraft.mined:minecraft.deepslate_iron_ore "TQ DS Iron Ore"
scoreboard objectives add ec.tq_mine_dia minecraft.mined:minecraft.diamond_ore "TQ Diamond Ore"
scoreboard objectives add ec.tq_mine_di_dia minecraft.mined:minecraft.deepslate_diamond_ore "TQ DS Diamond Ore"
scoreboard objectives add ec.tq_mine_coal minecraft.mined:minecraft.coal_ore "TQ Coal Ore"
scoreboard objectives add ec.tq_mine_di_coal minecraft.mined:minecraft.deepslate_coal_ore "TQ DS Coal Ore"
scoreboard objectives add ec.tq_mine_cop minecraft.mined:minecraft.copper_ore "TQ Copper Ore"
scoreboard objectives add ec.tq_mine_di_cop minecraft.mined:minecraft.deepslate_copper_ore "TQ DS Copper Ore"
scoreboard objectives add ec.tq_mine_red minecraft.mined:minecraft.redstone_ore "TQ Redstone Ore"
scoreboard objectives add ec.tq_mine_lapis minecraft.mined:minecraft.lapis_ore "TQ Lapis Ore"
scoreboard objectives add ec.tq_mine_emer minecraft.mined:minecraft.emerald_ore "TQ Emerald Ore"
scoreboard objectives add ec.tq_mine_debris minecraft.mined:minecraft.ancient_debris "TQ Ancient Debris"

# Stat objectives for delta tracking — Logging
scoreboard objectives add ec.tq_log_oak minecraft.mined:minecraft.oak_log "TQ Oak Log"
scoreboard objectives add ec.tq_log_spruce minecraft.mined:minecraft.spruce_log "TQ Spruce Log"
scoreboard objectives add ec.tq_log_birch minecraft.mined:minecraft.birch_log "TQ Birch Log"
scoreboard objectives add ec.tq_log_jungle minecraft.mined:minecraft.jungle_log "TQ Jungle Log"
scoreboard objectives add ec.tq_log_acacia minecraft.mined:minecraft.acacia_log "TQ Acacia Log"
scoreboard objectives add ec.tq_log_dark minecraft.mined:minecraft.dark_oak_log "TQ Dark Oak Log"
scoreboard objectives add ec.tq_log_cherry minecraft.mined:minecraft.cherry_log "TQ Cherry Log"
scoreboard objectives add ec.tq_log_mang minecraft.mined:minecraft.mangrove_log "TQ Mangrove Log"
scoreboard objectives add ec.tq_log_pale minecraft.mined:minecraft.pale_oak_log "TQ Pale Oak Log"

# Stat objectives for delta tracking — Farming
scoreboard objectives add ec.tq_pick_wheat minecraft.picked_up:minecraft.wheat "TQ Wheat Picked"
scoreboard objectives add ec.tq_pick_carrot minecraft.picked_up:minecraft.carrot "TQ Carrot Picked"
scoreboard objectives add ec.tq_pick_potato minecraft.picked_up:minecraft.potato "TQ Potato Picked"
scoreboard objectives add ec.tq_pick_beet minecraft.picked_up:minecraft.beetroot "TQ Beetroot Picked"
scoreboard objectives add ec.tq_pick_melon minecraft.picked_up:minecraft.melon_slice "TQ Melon Picked"
scoreboard objectives add ec.tq_pick_nwart minecraft.picked_up:minecraft.nether_wart "TQ Nether Wart"

# Stat objectives for delta tracking — Other
scoreboard objectives add ec.tq_fish minecraft.custom:minecraft.fish_caught "TQ Fish Caught"
scoreboard objectives add ec.tq_use_shears minecraft.used:minecraft.shears "TQ Shears Used"
scoreboard objectives add ec.tq_mine_dirt minecraft.mined:minecraft.dirt "TQ Dirt Mined"
scoreboard objectives add ec.tq_mine_grass minecraft.mined:minecraft.grass_block "TQ Grass Mined"
scoreboard objectives add ec.tq_mine_sand minecraft.mined:minecraft.sand "TQ Sand Mined"
scoreboard objectives add ec.tq_mine_gravel minecraft.mined:minecraft.gravel "TQ Gravel Mined"

# Quest type constants (for reference in route files)
# Type 1  = stat_delta (snapshot a stat, track delta)
# Type 2  = threshold (check existing scoreboard >= target)
# Type 3  = interact  (per-quest one-off condition check)
# Type 4  = meta      (multi-condition / special logic)
#
# Subtypes for type 1 (stat_delta):
#   1=stone(+ds), 2=iron(+ds), 3=diamond(+ds), 4=coal(+ds), 5=copper(+ds)
#   6=fish, 7=logs(all types), 8=wheat, 9=crops_combined, 10=dirt(+grass)
#   11=sand, 12=gravel, 13=shears, 14=blocks_placed, 15=deepslate
#   16=melon, 17=nether_wart, 18=redstone, 19=lapis, 20=emerald
#   21=ancient_debris
#
# Subtypes for type 2 (threshold):
#   1=ach.blocks_mined, 2=ach.crops_harvested, 3=ach.fish_caught
#   4=ach.blocks_placed, 5=ach.meals_cooked, 6=ach.crates_opened
#   7=ach.structures_found, 8=ach.biomes_visited, 9=ec.cf_rank
#   10=ach.trades_done, 11=ec.cf_nodes_found, 12=ach.forages_done
#   13=ach.prospects_done, 14=ec.tq_part (self-reference)
#
# Subtypes for type 3 (interact — quest part IS the subtype)
# Subtypes for type 4 (meta — quest part IS the subtype)

# Start self-scheduling progress check (runs every 1s)
schedule function evercraft:craftforever/spirit_tools/tome/check_progress 1s replace
