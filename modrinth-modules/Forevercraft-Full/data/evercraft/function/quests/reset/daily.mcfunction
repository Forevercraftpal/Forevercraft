# ============================================================
# Daily Quest Reset (Morning Fog)
# Clears all non-Heroic quests and regenerates boards
# ============================================================

# Set reset flag and track which day was reset
scoreboard players set #quest_reset_today ec.var 1
execute store result score #quest_last_reset_day ec.var run time query day

# Penalize incomplete quests BEFORE clearing (Tier 2-5 only, Errands exempt)
execute as @a run function evercraft:quests/reset/check_incomplete

# Clear tier 1-5 quests for all players (keep tier 6 Heroic)
scoreboard players set @a ec.quest_id_1 0
scoreboard players set @a ec.quest_id_2 0
scoreboard players set @a ec.quest_id_3 0
scoreboard players set @a ec.quest_id_4 0
scoreboard players set @a ec.quest_id_5 0
scoreboard players set @a ec.quest_prog_1 0
scoreboard players set @a ec.quest_prog_2 0
scoreboard players set @a ec.quest_prog_3 0
scoreboard players set @a ec.quest_prog_4 0
scoreboard players set @a ec.quest_prog_5 0

# Clear quest completion locks (allow re-accepting)
scoreboard players set @a ec.quest_done_1 0
scoreboard players set @a ec.quest_done_2 0
scoreboard players set @a ec.quest_done_3 0
scoreboard players set @a ec.quest_done_4 0
scoreboard players set @a ec.quest_done_5 0

# Reset daily first-quest bonus
scoreboard players set @a ec.daily_quest 0

# Reset daily re-roll and cancel count and cooldowns
scoreboard players set @a ec.qp_rerolled 0
scoreboard players set @a ec.qc_today 0
scoreboard players set @a ec.qc_cd_1 0
scoreboard players set @a ec.qc_cd_2 0
scoreboard players set @a ec.qc_cd_3 0
scoreboard players set @a ec.qc_cd_4 0
scoreboard players set @a ec.qc_cd_5 0
scoreboard players set @a ec.qc_cd_6 0

# Regenerate all quest boards
execute as @e[type=armor_stand,tag=quests.board] at @s run function evercraft:quests/board/refresh

# Notification now handled by news/morning_announce

# Reset housing daily visitor count
scoreboard players set @a hs.visit_today 0

# Reset guild pet warp strike notification
tag @a remove ec.guild_strike_notified

# Black Market daily deal rotation + sale chance rolls
function evercraft:black_market/daily_reset

# Artifact Bounty Board daily rotation
function evercraft:bounty_board/daily_reset
