# Duel System — Scoreboard Registration
# Called from init.mcfunction on datapack load

# Trigger for accept/decline/spectate (remove + re-add to ensure trigger type)
scoreboard objectives remove ec.duel
scoreboard objectives add ec.duel trigger "Duel Actions"
scoreboard players enable @a ec.duel

# Per-player state
scoreboard objectives add ec.duel_inv dummy "Duel Invite Pending"
scoreboard objectives add ec.duel_inv_cd dummy "Invite Expiry Countdown"
scoreboard objectives add ec.duel_active dummy "In Active Duel"
scoreboard objectives add ec.duel_mode dummy "Duel Mode"
scoreboard objectives add ec.duel_today dummy "Duels Today"
scoreboard objectives add ec.duel_last_day dummy "Last Duel Day"
scoreboard objectives add ec.duel_warn dummy "Boundary Warnings"
scoreboard objectives add ec.duel_team dummy "Saved Team Type"

# === NEW: Duel Variant Scoreboards ===
scoreboard objectives add ec.duel_kills dummy "FTX Kill Count"
scoreboard objectives add ec.duel_target dummy "FTX Kill Target"
scoreboard objectives add ec.duel_team_num dummy "Team Duel Team Number"
scoreboard objectives add ec.duel_class dummy "Class Duel Required Class"
scoreboard objectives add ec.ftx_round dummy "FTX Round Number"

# Global state
execute unless score #duel_active ec.var matches 0.. run scoreboard players set #duel_active ec.var 0
execute unless score #duel_t1_alive ec.var matches 0.. run scoreboard players set #duel_t1_alive ec.var 0
execute unless score #duel_t2_alive ec.var matches 0.. run scoreboard players set #duel_t2_alive ec.var 0

# Clean up stale duel state on reload
scoreboard players set @a ec.duel_inv 0
scoreboard players set @a ec.duel_inv_cd 0
scoreboard players set @a ec.duel_active 0
scoreboard players set @a ec.duel_mode 0
scoreboard players set @a ec.duel_warn 0
scoreboard players set @a ec.duel_kills 0
scoreboard players set @a ec.duel_target 0
scoreboard players set @a ec.duel_team_num 0
scoreboard players set @a ec.duel_class 0
scoreboard players set @a ec.ftx_round 0
scoreboard players set #duel_active ec.var 0
scoreboard players set #duel_t1_alive ec.var 0
scoreboard players set #duel_t2_alive ec.var 0
tag @a remove duel.challenger
tag @a remove duel.pending_target
tag @a remove duel.challenger_confirmed
tag @a remove ec.duel_active_tag
tag @a remove duel.self_marker
tag @a remove duel.raycaster
tag @a remove duel.ray_target
tag @a remove duel.team_challenger
tag @a remove duel.team_opponent
tag @a remove duel.team_opponent_confirmed
tag @a remove duel.partner_a
tag @a remove duel.partner_b
tag @a remove duel.eliminated
tag @a remove duel.ftx_respawning
