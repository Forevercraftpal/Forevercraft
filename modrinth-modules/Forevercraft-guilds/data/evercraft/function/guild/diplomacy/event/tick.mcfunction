# ============================================================
# Guild Diplomacy — Event Tick (1s self-scheduling)
# Score aggregation, time check, PvP zone checks, actionbar
# ============================================================

# Stop if no event active
execute unless score #gd_event_active ec.var matches 1 run return 0

# Self-schedule
schedule function evercraft:guild/diplomacy/event/tick 1s

# === TIME CHECK ===
execute store result score #gd_now ec.temp run time query gametime
execute if score #gd_now ec.temp >= #gd_event_end ec.var run function evercraft:guild/diplomacy/event/end
execute if score #gd_now ec.temp >= #gd_event_end ec.var run return 0

# === DELTA SCORE UPDATES (for baseline-tracked activities) ===
# Activity 3 (diamonds): score = current breaks - baseline
execute if score #gd_event_activity ec.var matches 3 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score = @s ec.break_diamond_ore
execute if score #gd_event_activity ec.var matches 3 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score -= @s ec.gd_baseline

# Activity 4 (patrons): score = current kills - baseline
execute if score #gd_event_activity ec.var matches 4 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score = @s ach.patron_kills
execute if score #gd_event_activity ec.var matches 4 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score -= @s ec.gd_baseline

# Activity 5 (crop harvesting): score = sum of 4 crop stats - baseline
execute if score #gd_event_activity ec.var matches 5 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score = @s ec.gd_mined_wheat
execute if score #gd_event_activity ec.var matches 5 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score += @s ec.gd_mined_carrot
execute if score #gd_event_activity ec.var matches 5 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score += @s ec.gd_mined_potato
execute if score #gd_event_activity ec.var matches 5 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score += @s ec.gd_mined_beet
execute if score #gd_event_activity ec.var matches 5 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score -= @s ec.gd_baseline

# Activity 9 (mob kills): score = current mob kills - baseline
execute if score #gd_event_activity ec.var matches 9 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score = @s ec.gd_mobkills
execute if score #gd_event_activity ec.var matches 9 as @a[scores={ec.gd_event_active=1}] run scoreboard players operation @s ec.gd_event_score -= @s ec.gd_baseline

# === AGGREGATE GUILD SCORES ===
scoreboard players set #gd_score_a ec.var 0
scoreboard players set #gd_score_b ec.var 0

# Sum guild A player scores
execute as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_a ec.var run scoreboard players operation #gd_score_a ec.var += @s ec.gd_event_score

# Sum guild B player scores
execute as @a[scores={ec.gd_event_active=1}] if score @s ec.guild_id = #gd_event_guild_b ec.var run scoreboard players operation #gd_score_b ec.var += @s ec.gd_event_score

# Add PvP kills for pillage events
execute if score #gd_event_type ec.var matches 2 as @a[scores={ec.gd_event_active=1,ec.gd_pvp_kills=1..}] if score @s ec.guild_id = #gd_event_guild_a ec.var run scoreboard players operation #gd_score_a ec.var += @s ec.gd_pvp_kills
execute if score #gd_event_type ec.var matches 2 as @a[scores={ec.gd_event_active=1,ec.gd_pvp_kills=1..}] if score @s ec.guild_id = #gd_event_guild_b ec.var run scoreboard players operation #gd_score_b ec.var += @s ec.gd_pvp_kills

# === PVP ZONE CHECKS (Pillage only) ===
execute if score #gd_event_type ec.var matches 2 as @a[scores={ec.gd_event_active=1}] at @s run function evercraft:guild/diplomacy/event/pvp/check

# === ACTIONBAR (every 20 ticks / 1s) ===
# Store scores for macro display
execute store result storage evercraft:guild temp.score_a int 1 run scoreboard players get #gd_score_a ec.var
execute store result storage evercraft:guild temp.score_b int 1 run scoreboard players get #gd_score_b ec.var
function evercraft:guild/diplomacy/event/actionbar with storage evercraft:guild event
