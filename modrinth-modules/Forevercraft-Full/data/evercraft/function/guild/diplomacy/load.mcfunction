# ============================================================
# Guild Diplomacy — Load
# Scoreboards, storage init, title teams
# ============================================================

# === DIPLOMACY SCOREBOARDS ===
scoreboard objectives add ec.gd_diplo trigger "Diplomacy Action"
scoreboard objectives add ec.gd_vote_cd dummy "Diplo Vote Cooldown"
scoreboard objectives add ec.gd_vote_yes dummy "Diplo Votes Yes"
scoreboard objectives add ec.gd_vote_no dummy "Diplo Votes No"
scoreboard objectives add ec.gd_vote_need dummy "Diplo Votes Needed"
scoreboard objectives add ec.gd_vote_type dummy "Diplo Vote Type"
scoreboard objectives add ec.gd_vote_tgt dummy "Diplo Vote Target Guild"
scoreboard objectives add ec.gd_vote_queued dummy "Diplo Vote Queued"
scoreboard objectives add ec.gd_vote_total dummy "Diplo Total Votes Cast"

# === EVENT SCOREBOARDS ===
scoreboard objectives add ec.gd_event_active dummy "In Guild Event"
scoreboard objectives add ec.gd_event_score dummy "Event Score"
scoreboard objectives add ec.gd_pvp_kills dummy "Pillage PvP Kills"
scoreboard objectives add ec.gd_baseline dummy "Event Stat Baseline"
scoreboard objectives add ec.gd_saved_team dummy "Saved Team ID (PvP)"

# === CROP HARVESTING TRACKING (Activity 5) ===
scoreboard objectives add ec.gd_mined_wheat minecraft.mined:minecraft.wheat "Wheat Mined"
scoreboard objectives add ec.gd_mined_carrot minecraft.mined:minecraft.carrots "Carrots Mined"
scoreboard objectives add ec.gd_mined_potato minecraft.mined:minecraft.potatoes "Potatoes Mined"
scoreboard objectives add ec.gd_mined_beet minecraft.mined:minecraft.beetroots "Beetroot Mined"
scoreboard objectives add ec.gd_crop_base dummy "Crop Baseline Sum"

# === MOB KILLS TRACKING (Activity 9) ===
scoreboard objectives add ec.gd_mobkills minecraft.custom:minecraft.mob_kills "Mob Kills"

# === GUI SCOREBOARDS ===
scoreboard objectives add ec.guild_allies_pg dummy "Allies Page"
scoreboard objectives add ec.gd_supply_tgt dummy "Supply Target Guild"

# === TITLE SCOREBOARDS ===
scoreboard objectives add ec.gd_wins dummy "Guild Event Wins"
scoreboard objectives add ec.gd_losses dummy "Guild Event Losses"
scoreboard objectives add ec.gd_title dummy "Diplomacy Title ID"

# Enable trigger for all players
scoreboard players enable @a ec.gd_diplo

# === GLOBAL STATE DEFAULTS ===
execute unless score #gd_event_active ec.var matches 0.. run scoreboard players set #gd_event_active ec.var 0

# === STORAGE INIT ===
execute unless data storage evercraft:guild event run data modify storage evercraft:guild event set value {active:0,type:0,guild_a:0,guild_b:0,activity:0,ends_at:0,score_a:0,score_b:0,guild_a_name:"",guild_b_name:""}

# === TITLE TEAMS ===
function evercraft:guild/diplomacy/titles/load_teams

# === START DIPLOMACY TICK ===
schedule function evercraft:guild/diplomacy/tick 5s
