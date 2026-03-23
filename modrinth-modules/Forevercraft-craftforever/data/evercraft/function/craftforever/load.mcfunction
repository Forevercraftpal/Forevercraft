# === CRAFTFOREVER SYSTEM ===
# Initialize all Craftforever scoreboards and start scheduled loops

# ═══ ARTISAN RANK (Plan 2 — Full Implementation) ═══
scoreboard objectives add ec.cf_rank dummy "Artisan Rank"
scoreboard objectives add ec.cf_xp dummy "Artisan XP"
scoreboard objectives add ec.cf_xp_next dummy "Artisan XP Next"

# Artisan category XP (ec.cf_axp_ prefix to avoid collision with node mining ec.cf_mining)
scoreboard objectives add ec.cf_axp_mine dummy "Artisan XP: Mining"
scoreboard objectives add ec.cf_axp_cook dummy "Artisan XP: Cooking"
scoreboard objectives add ec.cf_axp_build dummy "Artisan XP: Building"
scoreboard objectives add ec.cf_axp_fish dummy "Artisan XP: Fishing"
scoreboard objectives add ec.cf_axp_forage dummy "Artisan XP: Foraging"
scoreboard objectives add ec.cf_axp_forge dummy "Artisan XP: Forging"

# Breakdown trigger
scoreboard objectives add ec.cf_info trigger "Artisan Info"
scoreboard players enable @a ec.cf_info

# ═══ FORGE TABLE STATE SCOREBOARDS ═══
scoreboard objectives add ec.cf_state dummy "Forge State"
scoreboard objectives add ec.cf_phase dummy "Forge Phase"
scoreboard objectives add ec.cf_heat dummy "Forge Heat"
scoreboard objectives add ec.cf_quality dummy "Forge Quality"
scoreboard objectives add ec.cf_timer dummy "Forge Timer"
scoreboard objectives add ec.cf_menu_time dummy "Forge Menu Time"
scoreboard objectives add ec.cf_mat_tier dummy "Material Tier"
scoreboard objectives add ec.cf_cat_tier dummy "Catalyst Tier"
scoreboard objectives add ec.cf_recipe dummy "Matched Recipe"

# Pattern matching (Phase 2: Hammer)
scoreboard objectives add ec.cf_p1 dummy "Pattern Slot 1"
scoreboard objectives add ec.cf_p2 dummy "Pattern Slot 2"
scoreboard objectives add ec.cf_p3 dummy "Pattern Slot 3"
scoreboard objectives add ec.cf_p4 dummy "Pattern Slot 4"
scoreboard objectives add ec.cf_p5 dummy "Pattern Slot 5"
scoreboard objectives add ec.cf_p6 dummy "Pattern Slot 6"
scoreboard objectives add ec.cf_p7 dummy "Pattern Slot 7"
scoreboard objectives add ec.cf_pat_pos dummy "Pattern Position"
scoreboard objectives add ec.cf_pat_len dummy "Pattern Length"

# Quench (Phase 3)
scoreboard objectives add ec.cf_quench dummy "Quench Position"
scoreboard objectives add ec.cf_lock_zone dummy "Quench Lock Zone"

# Temp scoreboard
scoreboard objectives add ec.cf_temp dummy "Craftforever Temp"

# ═══ ARTISAN RANK CONSTANTS ═══
scoreboard players set #cf_5 ec.cf_temp 5
scoreboard players set #cf_20 ec.cf_temp 20
scoreboard players set #cf_100 ec.cf_temp 100
scoreboard players set #cf_neg1 ec.cf_temp -1
scoreboard players set #cf_60 ec.cf_temp 60
scoreboard players set #cf_300 ec.cf_temp 300

# ═══ FORGE TABLE SKIN ═══
data modify storage evercraft:craftforever forge_skin set value "ewogICJ0aW1lc3RhbXAiIDogMTc3Mzg0MzMzNjE0OCwKICAicHJvZmlsZUlkIiA6ICJiZmQ3MjMxMGNmYWY0Yjc5OTNlYzhiYzU3ODg3YzU5ZCIsCiAgInByb2ZpbGVOYW1lIiA6ICJBbHBoYVNwQW0iLAogICJzaWduYXR1cmVSZXF1aXJlZCIgOiB0cnVlLAogICJ0ZXh0dXJlcyIgOiB7CiAgICAiU0tJTiIgOiB7CiAgICAgICJ1cmwiIDogImh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvZGM3NGU2ZWRmZTAxZDRjZGEyMjNhNjlhMTQ0MDQ4Y2E1ODgwNDYyNzE2MjE3MTNmZjc0NDdhYjJmNzQzYjU2OSIsCiAgICAgICJtZXRhZGF0YSIgOiB7CiAgICAgICAgIm1vZGVsIiA6ICJzbGltIgogICAgICB9CiAgICB9CiAgfQp9"

# ═══ XP THRESHOLD TABLE ═══
# Formula: floor(100 * 1.05^n + 50*n) for levels 0-100
data modify storage evercraft:craftforever xp_table set value [100,155,210,265,321,377,434,490,547,605,662,721,779,838,897,957,1018,1079,1140,1202,1265,1328,1392,1457,1522,1588,1655,1723,1792,1861,1932,2003,2076,2150,2225,2301,2379,2458,2538,2620,2703,2789,2876,2964,3055,3148,3243,3340,3440,3542,3646,3754,3864,3977,4093,4213,4336,4463,4594,4728,4867,5011,5159,5312,5470,5633,5803,5978,6159,6347,6542,6744,6954,7172,7398,7633,7877,8131,8395,8670,8956,9253,9564,9887,10224,10575,10941,11323,11722,12138,12573,13026,13500,13995,14512,15053,15618,16209,16827,17473,18150]

# ═══ CRAFTER GLOWIE TEAMS ═══
team add ec.cf_glow_mine
team modify ec.cf_glow_mine color gold

team add ec.cf_glow_cook
team modify ec.cf_glow_cook color red

team add ec.cf_glow_fish
team modify ec.cf_glow_fish color aqua

team add ec.cf_glow_build
team modify ec.cf_glow_build color green

team add ec.cf_glow_forage
team modify ec.cf_glow_forage color dark_purple

team add ec.cf_glow_forge
team modify ec.cf_glow_forge color white

# --- Codex tracking ---
scoreboard objectives add ec.cf_nodes_found dummy "CF Nodes Found"
scoreboard objectives add ec.cf_recipes_found dummy "CF Recipes Found"
scoreboard objectives add ec.cf_meals_found dummy "CF Meals Found"
scoreboard objectives add ec.cf_trophies dummy "CF Trophies"
scoreboard objectives add ec.cf_materials dummy "CF Materials"
scoreboard objectives add ec.cf_codex_page dummy "CF Codex Page"
scoreboard objectives add ec.cf_codex_section dummy "CF Codex Section"
scoreboard objectives add ec.cf_gui_session dummy "CF GUI Session"

# --- Node mining state ---
scoreboard objectives add ec.cf_mining dummy "CF Mining Active"
scoreboard objectives add ec.cf_mine_prog dummy "CF Mining Progress"
scoreboard objectives add ec.cf_mine_sx dummy "CF Mine Node X"
scoreboard objectives add ec.cf_mine_sy dummy "CF Mine Node Y"
scoreboard objectives add ec.cf_mine_sz dummy "CF Mine Node Z"

# --- Node counts ---
scoreboard objectives add ec.cf_node_mined dummy "CF Nodes Mined"

# (Biome node mining uses actionbar progress — no bossbar needed)

# --- Resonance Strike minigame ---
scoreboard objectives add ec.cf_reso dummy "CF Resonance Active"
scoreboard objectives add ec.cf_reso_pos dummy "CF Resonance Cursor Pos"
scoreboard objectives add ec.cf_reso_dir dummy "CF Resonance Direction"
scoreboard objectives add ec.cf_reso_zone dummy "CF Resonance Zone Center"
scoreboard objectives add ec.cf_reso_timer dummy "CF Resonance Timer"

# --- Codex GUI state ---
scoreboard objectives add ec.cf_codex_use dummy "CF Codex Use Flag"
scoreboard objectives add ec.cf_codex_cd dummy "CF Codex Cooldown"

# Initialize global session counter (only if not already set)
execute unless score #cf_gui_session ec.var matches 1.. run scoreboard players set #cf_gui_session ec.var 0

# --- Codex give trigger (testing) ---
scoreboard objectives add ec.cf_codex trigger "Give CF Codex"
scoreboard players enable @a ec.cf_codex

# --- Trade Trials ---
scoreboard objectives add ec.tt_active dummy "TT Active"
scoreboard objectives add ec.tt_type dummy "TT Type"
scoreboard objectives add ec.tt_tier dummy "TT Tier"
scoreboard objectives add ec.tt_timer dummy "TT Timer"
scoreboard objectives add ec.tt_score dummy "TT Score"
scoreboard objectives add ec.tt_target dummy "TT Target"
scoreboard objectives add ec.tt_exit trigger "TT Emergency Exit"
scoreboard players enable @a ec.tt_exit

# Per-category best tier completed (1-10)
scoreboard objectives add ec.tt_m_best dummy "TT Mining Best"
scoreboard objectives add ec.tt_farm_best dummy "TT Farming Best"
scoreboard objectives add ec.tt_fish_best dummy "TT Fishing Best"
scoreboard objectives add ec.tt_build_best dummy "TT Building Best"
scoreboard objectives add ec.tt_lumb_best dummy "TT Lumber Best"
scoreboard objectives add ec.tt_art_best dummy "TT Artisan Best"

# Trial expansion: mastery, stats, challenge modes
scoreboard objectives add ec.tt_completed dummy "TT Total Completed"
scoreboard objectives add ec.tt_mastery dummy "TT Categories Mastered"
scoreboard objectives add ec.tt_speed_clear dummy "TT Speed Clears"
scoreboard objectives add ec.tt_first_clear dummy "TT First Clear Flag"
scoreboard objectives add ec.tt_hard_mode dummy "TT Hard Mode"
scoreboard objectives add ec.tt_hard_wins dummy "TT Hard Mode Wins"
scoreboard objectives add ec.tt_daily_wins dummy "TT Daily Wins"
scoreboard objectives add ec.tt_is_daily dummy "TT Is Daily Flag"
scoreboard objectives add ec.tt_daily_type dummy "TT Daily Type"
scoreboard objectives add ec.tt_daily_tier dummy "TT Daily Tier"
scoreboard objectives add ec.tt_daily_done dummy "TT Daily Done Today"
scoreboard objectives add ec.tt_daily_day dummy "TT Daily Last Day"
scoreboard objectives add ec.tt_title dummy "TT Active Title"

# Mining stat trackers (auto-update — live values)
scoreboard objectives add ec.tt_s_stone minecraft.mined:minecraft.stone "TT Stone Mined"
scoreboard objectives add ec.tt_s_iron minecraft.mined:minecraft.iron_ore "TT Iron Mined"
scoreboard objectives add ec.tt_s_diron minecraft.mined:minecraft.deepslate_iron_ore "TT DS Iron Mined"
scoreboard objectives add ec.tt_s_gold minecraft.mined:minecraft.gold_ore "TT Gold Mined"
scoreboard objectives add ec.tt_s_dgold minecraft.mined:minecraft.deepslate_gold_ore "TT DS Gold Mined"
scoreboard objectives add ec.tt_s_dia minecraft.mined:minecraft.diamond_ore "TT Diamond Mined"
scoreboard objectives add ec.tt_s_ddia minecraft.mined:minecraft.deepslate_diamond_ore "TT DS Diamond Mined"
scoreboard objectives add ec.tt_s_coal minecraft.mined:minecraft.coal_ore "TT Coal Mined"
scoreboard objectives add ec.tt_s_dcoal minecraft.mined:minecraft.deepslate_coal_ore "TT DS Coal Mined"
scoreboard objectives add ec.tt_s_cop minecraft.mined:minecraft.copper_ore "TT Copper Mined"
scoreboard objectives add ec.tt_s_dcop minecraft.mined:minecraft.deepslate_copper_ore "TT DS Copper Mined"
scoreboard objectives add ec.tt_s_lapis minecraft.mined:minecraft.lapis_ore "TT Lapis Mined"
scoreboard objectives add ec.tt_s_dlapis minecraft.mined:minecraft.deepslate_lapis_ore "TT DS Lapis Mined"
scoreboard objectives add ec.tt_s_red minecraft.mined:minecraft.redstone_ore "TT Redstone Mined"
scoreboard objectives add ec.tt_s_dred minecraft.mined:minecraft.deepslate_redstone_ore "TT DS Redstone Mined"
scoreboard objectives add ec.tt_s_emer minecraft.mined:minecraft.emerald_ore "TT Emerald Mined"
scoreboard objectives add ec.tt_s_demer minecraft.mined:minecraft.deepslate_emerald_ore "TT DS Emerald Mined"
scoreboard objectives add ec.tt_s_debris minecraft.mined:minecraft.ancient_debris "TT Debris Mined"
scoreboard objectives add ec.tt_s_dslate minecraft.mined:minecraft.deepslate "TT Deepslate Mined"
scoreboard objectives add ec.tt_s_dior minecraft.mined:minecraft.diorite "TT Diorite Mined"
scoreboard objectives add ec.tt_s_gran minecraft.mined:minecraft.granite "TT Granite Mined"
scoreboard objectives add ec.tt_s_ande minecraft.mined:minecraft.andesite "TT Andesite Mined"

# Farming stat trackers (item pickup)
scoreboard objectives add ec.tt_s_wheat minecraft.picked_up:minecraft.wheat "TT Wheat Picked"
scoreboard objectives add ec.tt_s_carrot minecraft.picked_up:minecraft.carrot "TT Carrot Picked"
scoreboard objectives add ec.tt_s_potato minecraft.picked_up:minecraft.potato "TT Potato Picked"
scoreboard objectives add ec.tt_s_beetrt minecraft.picked_up:minecraft.beetroot "TT Beetroot Picked"
scoreboard objectives add ec.tt_s_melon minecraft.picked_up:minecraft.melon_slice "TT Melon Picked"
scoreboard objectives add ec.tt_s_pumpkn minecraft.picked_up:minecraft.pumpkin "TT Pumpkin Picked"
scoreboard objectives add ec.tt_s_nwart minecraft.picked_up:minecraft.nether_wart "TT Nether Wart Picked"
scoreboard objectives add ec.tt_s_sugar minecraft.picked_up:minecraft.sugar_cane "TT Sugar Cane Picked"

# Fishing stat tracker
scoreboard objectives add ec.tt_s_fish minecraft.custom:minecraft.fish_caught "TT Fish Caught"

# Lumber stat trackers (log mining)
scoreboard objectives add ec.tt_s_oaklog minecraft.mined:minecraft.oak_log "TT Oak Log"
scoreboard objectives add ec.tt_s_sprlog minecraft.mined:minecraft.spruce_log "TT Spruce Log"
scoreboard objectives add ec.tt_s_birlog minecraft.mined:minecraft.birch_log "TT Birch Log"
scoreboard objectives add ec.tt_s_junlog minecraft.mined:minecraft.jungle_log "TT Jungle Log"
scoreboard objectives add ec.tt_s_acalog minecraft.mined:minecraft.acacia_log "TT Acacia Log"
scoreboard objectives add ec.tt_s_drklog minecraft.mined:minecraft.dark_oak_log "TT Dark Oak Log"
scoreboard objectives add ec.tt_s_mnglog minecraft.mined:minecraft.mangrove_log "TT Mangrove Log"
scoreboard objectives add ec.tt_s_chrlog minecraft.mined:minecraft.cherry_log "TT Cherry Log"

# Building stat trackers (blocks placed/used)
scoreboard objectives add ec.tt_s_dirt minecraft.used:minecraft.dirt "TT Dirt Used"
scoreboard objectives add ec.tt_s_cobble minecraft.used:minecraft.cobblestone "TT Cobble Used"
scoreboard objectives add ec.tt_s_planks minecraft.used:minecraft.oak_planks "TT Planks Used"

# Artisan stat trackers
scoreboard objectives add ec.tt_s_wool minecraft.picked_up:minecraft.white_wool "TT White Wool"
scoreboard objectives add ec.tt_s_string minecraft.picked_up:minecraft.string "TT String Picked"
scoreboard objectives add ec.tt_s_cobweb minecraft.mined:minecraft.cobweb "TT Cobweb Mined"
scoreboard objectives add ec.tt_s_poppy minecraft.picked_up:minecraft.poppy "TT Poppy Picked"
scoreboard objectives add ec.tt_s_dandy minecraft.picked_up:minecraft.dandelion "TT Dandelion Picked"
scoreboard objectives add ec.tt_s_blorch minecraft.picked_up:minecraft.blue_orchid "TT Blue Orchid Picked"
scoreboard objectives add ec.tt_s_allium minecraft.picked_up:minecraft.allium "TT Allium Picked"
scoreboard objectives add ec.tt_s_tulip minecraft.picked_up:minecraft.red_tulip "TT Red Tulip Picked"
scoreboard objectives add ec.tt_s_lily minecraft.picked_up:minecraft.lily_of_the_valley "TT Lily Picked"

# Dummy snapshots (store starting values for delta calculation)
scoreboard objectives add ec.tt_snap dummy "TT Snapshot"
scoreboard objectives add ec.tt_snap2 dummy "TT Snapshot 2"
scoreboard objectives add ec.tt_snap3 dummy "TT Snapshot 3"
scoreboard objectives add ec.tt_snap4 dummy "TT Snapshot 4"
scoreboard objectives add ec.tt_snap5 dummy "TT Snapshot 5"
scoreboard objectives add ec.tt_snap6 dummy "TT Snapshot 6"
scoreboard objectives add ec.tt_snap7 dummy "TT Snapshot 7"
scoreboard objectives add ec.tt_snap8 dummy "TT Snapshot 8"
scoreboard objectives add ec.tt_snap9 dummy "TT Snapshot 9"

# Arena position (for fill cleanup)
scoreboard objectives add ec.tt_arena_x dummy "TT Arena X"
scoreboard objectives add ec.tt_arena_y dummy "TT Arena Y"
scoreboard objectives add ec.tt_arena_z dummy "TT Arena Z"

# Trial bossbar
bossbar add evercraft:trial_timer {"text":"Trial","color":"gold","italic":false}
bossbar set evercraft:trial_timer max 6000
bossbar set evercraft:trial_timer color yellow
bossbar set evercraft:trial_timer style notched_10
bossbar set evercraft:trial_timer visible false

# Global active flag (for tick gating)
execute unless score #tt_active ec.var matches 0.. run scoreboard players set #tt_active ec.var 0

# --- Constants ---
scoreboard players set #2 ec.const 2
scoreboard players set #6 ec.const 6
scoreboard players set #7 ec.const 7
scoreboard players set #20 ec.const 20
scoreboard players set #60 ec.const 60

# --- Daily challenge init ---
function evercraft:craftforever/trials/daily_roll

# --- Start scheduled loops ---
# craftforever/tick is called every tick from main tick.mcfunction (line 460)
# Glow refresh runs on a 1s schedule since it only needs periodic refresh
schedule function evercraft:craftforever/artisan/glowies/refresh 1s replace

# --- Biome Node scheduled loops (Plan 3) ---
schedule function evercraft:craftforever/nodes/tick_spawn 5s
schedule function evercraft:craftforever/nodes/tick_particles 10t
schedule function evercraft:craftforever/nodes/tick_despawn 100t

# ═══ HOUSING LABORERS (Plan 4) ═══
scoreboard objectives add ec.lb_count dummy "Laborer Count"
scoreboard objectives add ec.lb_max dummy "Laborer Max Slots"
scoreboard objectives add ec.lb_state dummy "Laborer State"
scoreboard objectives add ec.lb_fed dummy "Laborer Satisfaction"
scoreboard objectives add ec.lb_food_tier dummy "Laborer Food Tier"
scoreboard objectives add ec.lb_food_cat dummy "Laborer Food Cat Match"
scoreboard objectives add ec.lb_quality dummy "Laborer Expedition Quality"
scoreboard objectives add ec.lb_expeditions dummy "Laborer Total Expeditions"
scoreboard objectives add ec.lb_adventures dummy "Laborer Total Adventures"
scoreboard objectives add ec.lb_perm_bonus dummy "Laborer Permanent Bonus"
scoreboard objectives add ec.lb_slot dummy "Laborer Slot Index"
scoreboard objectives add ec.lb_exp_start dummy "Laborer Expedition Start"
scoreboard objectives add ec.lb_exp_dur dummy "Laborer Expedition Duration"

# --- Spirit Tools (Plan: GOD-TIER T10 tools) ---
function evercraft:craftforever/spirit_tools/load
