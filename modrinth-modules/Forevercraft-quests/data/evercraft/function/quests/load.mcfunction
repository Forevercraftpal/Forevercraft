# ============================================================
# EVERCRAFT QUEST SYSTEM — Load Function
# ============================================================

# Quest slot scoreboards (1 quest per tier, up to 6 active)
scoreboard objectives add ec.quest_id_1 dummy
scoreboard objectives add ec.quest_id_2 dummy
scoreboard objectives add ec.quest_id_3 dummy
scoreboard objectives add ec.quest_id_4 dummy
scoreboard objectives add ec.quest_id_5 dummy
scoreboard objectives add ec.quest_id_6 dummy
scoreboard objectives add ec.quest_prog_1 dummy
scoreboard objectives add ec.quest_prog_2 dummy
scoreboard objectives add ec.quest_prog_3 dummy
scoreboard objectives add ec.quest_prog_4 dummy
scoreboard objectives add ec.quest_prog_5 dummy
scoreboard objectives add ec.quest_prog_6 dummy

# Quest tracking
scoreboard objectives add ec.quest_village dummy
scoreboard objectives add ec.quest_lday dummy
scoreboard objectives add ec.current_village dummy
scoreboard objectives add ec.last_village dummy
scoreboard objectives add ec.village_rep dummy
scoreboard objectives add ec.rep_rank dummy
scoreboard objectives add ec.rep_hero dummy

# Kill tracking for hunt quests
scoreboard objectives add ec.kills_zombie minecraft.killed:minecraft.zombie
scoreboard objectives add ec.kills_skeleton minecraft.killed:minecraft.skeleton
scoreboard objectives add ec.kills_spider minecraft.killed:minecraft.spider
scoreboard objectives add ec.kills_creeper minecraft.killed:minecraft.creeper
scoreboard objectives add ec.kills_enderman minecraft.killed:minecraft.enderman
scoreboard objectives add ec.kills_drowned minecraft.killed:minecraft.drowned
scoreboard objectives add ec.kills_phantom minecraft.killed:minecraft.phantom
scoreboard objectives add ec.kills_witch minecraft.killed:minecraft.witch
scoreboard objectives add ec.kills_blaze minecraft.killed:minecraft.blaze
scoreboard objectives add ec.kills_guardian minecraft.killed:minecraft.guardian
scoreboard objectives add ec.kills_cave_spider minecraft.killed:minecraft.cave_spider
scoreboard objectives add ec.kills_wither_skeleton minecraft.killed:minecraft.wither_skeleton
scoreboard objectives add ec.kills_pillager minecraft.killed:minecraft.pillager
scoreboard objectives add ec.kills_evoker minecraft.killed:minecraft.evoker
scoreboard objectives add ec.kills_piglin_brute minecraft.killed:minecraft.piglin_brute
scoreboard objectives add ec.kills_ravager minecraft.killed:minecraft.ravager
scoreboard objectives add ec.kills_elder_guardian minecraft.killed:minecraft.elder_guardian
scoreboard objectives add ec.kills_wither minecraft.killed:minecraft.wither
scoreboard objectives add ec.kills_ender_dragon minecraft.killed:minecraft.ender_dragon
scoreboard objectives add ec.kills_warden minecraft.killed:minecraft.warden
scoreboard objectives add ec.kills_breeze minecraft.killed:minecraft.breeze
scoreboard objectives add ec.kills_mythical dummy

# New kill tracking for expanded quests
scoreboard objectives add ec.kills_husk minecraft.killed:minecraft.husk
scoreboard objectives add ec.kills_stray minecraft.killed:minecraft.stray
scoreboard objectives add ec.kills_endermite minecraft.killed:minecraft.endermite
scoreboard objectives add ec.kills_vindicator minecraft.killed:minecraft.vindicator
scoreboard objectives add ec.kills_piglin minecraft.killed:minecraft.piglin
scoreboard objectives add ec.kills_magma_cube minecraft.killed:minecraft.magma_cube
scoreboard objectives add ec.kills_silverfish minecraft.killed:minecraft.silverfish
scoreboard objectives add ec.kills_hoglin minecraft.killed:minecraft.hoglin
scoreboard objectives add ec.kills_ghast minecraft.killed:minecraft.ghast

# System quest delta snapshots (per-tier: snapshot ach.* value on accept, subtract in tracking)
scoreboard objectives add ec.stat_snap_1 dummy
scoreboard objectives add ec.stat_snap_2 dummy
scoreboard objectives add ec.stat_snap_3 dummy
scoreboard objectives add ec.stat_snap_4 dummy

# Quest system variables
scoreboard objectives add ec.quest_var dummy
scoreboard objectives add ec.quest_roll dummy
scoreboard objectives add ec.quest_tier dummy
scoreboard objectives add ec.quest_target dummy
scoreboard objectives add ec.village_id dummy

# Quest completion locks (prevents re-accepting completed quests until daily reset)
scoreboard objectives add ec.quest_done_1 dummy
scoreboard objectives add ec.quest_done_2 dummy
scoreboard objectives add ec.quest_done_3 dummy
scoreboard objectives add ec.quest_done_4 dummy
scoreboard objectives add ec.quest_done_5 dummy
scoreboard objectives add ec.quest_done_6 dummy

# Heroic quest expiry timer (ticks until heroic quest expires)
scoreboard objectives add ec.quest_expiry dummy

# Daily first-quest bonus tracker (0 = not yet, 1 = already claimed today)
scoreboard objectives add ec.daily_quest dummy

# Quest tracker adaptive reminder
scoreboard objectives add ec.qst_remind dummy "Quest Reminder Timer"
scoreboard objectives add ec.qst_lprog dummy "Quest Last Known Progress"

# Quest board temp scores
scoreboard objectives add quests.temp dummy

# Quest Preview scoreboards
scoreboard objectives add ec.qp_tier dummy
scoreboard objectives add ec.qp_opt1 dummy
scoreboard objectives add ec.qp_opt2 dummy
scoreboard objectives add ec.qp_opt3 dummy
scoreboard objectives add ec.qp_active dummy
scoreboard objectives add ec.qp_rerolled dummy

# Quest Cancel scoreboards
scoreboard objectives add ec.qc_today dummy
scoreboard objectives add ec.qc_cd_1 dummy
scoreboard objectives add ec.qc_cd_2 dummy
scoreboard objectives add ec.qc_cd_3 dummy
scoreboard objectives add ec.qc_cd_4 dummy
scoreboard objectives add ec.qc_cd_5 dummy
scoreboard objectives add ec.qc_cd_6 dummy

# Constants objective and values
scoreboard objectives add ec.const dummy
scoreboard players set #1000 ec.const 1000
scoreboard players set #7 ec.const 7
scoreboard players set #16 ec.const 16
scoreboard players set #75 ec.const 75
scoreboard players set #10000 ec.const 10000
scoreboard players set #quest_reset_today ec.var 0
scoreboard players set #quest_noon_gifted ec.var 0

# Check if a new day has started since last reset (handles missed resets across reloads)
# Use vanilla day number (time query day) — increments every 24000 ticks
execute store result score #quest_current_day ec.var run time query day
scoreboard players operation #quest_prev_day ec.var = #quest_current_day ec.var
# If last reset day doesn't match current day, fire the daily reset now
execute unless score #quest_last_reset_day ec.var = #quest_current_day ec.var run function evercraft:quests/reset/daily
# Store current day as last reset day
scoreboard players operation #quest_last_reset_day ec.var = #quest_current_day ec.var

# Initialize quest pool data
function evercraft:quests/data/quest_pool

# Start self-scheduling tick (runs every 1s instead of every tick)
schedule function evercraft:quests/tick 1s replace
