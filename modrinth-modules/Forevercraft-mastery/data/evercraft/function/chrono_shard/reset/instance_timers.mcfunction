# Chrono Shard — Reset Instance Timers
# Clears all dungeon lockouts, trial lockouts, and heist cooldowns
# @s = player

# === Dungeon Instance Lockouts (set to 0 = no lockout) ===
scoreboard players set @s dg.lo_1 0
scoreboard players set @s dg.lo_2 0
scoreboard players set @s dg.lo_3 0
scoreboard players set @s dg.lo_4 0
scoreboard players set @s dg.lo_5 0
scoreboard players set @s dg.lo_6 0
scoreboard players set @s dg.lo_7 0
scoreboard players set @s dg.lo_8 0
scoreboard players set @s dg.lo_9 0
scoreboard players set @s dg.lo_10 0
scoreboard players set @s dg.lo_11 0
scoreboard players set @s dg.lo_12 0
scoreboard players set @s dg.lo_13 0
scoreboard players set @s dg.lo_14 0
scoreboard players set @s dg.lo_17 0
scoreboard players set @s dg.lo_18 0
scoreboard players set @s dg.lo_19 0
scoreboard players set @s dg.lo_v 0
scoreboard players set @s dg.lo_any 0

# === Trade Trial Lockouts ===
scoreboard players set @s dg.lo_tt1 0
scoreboard players set @s dg.lo_tt2 0
scoreboard players set @s dg.lo_tt3 0
scoreboard players set @s dg.lo_tt4 0
scoreboard players set @s dg.lo_tt5 0
scoreboard players set @s dg.lo_tt6 0

# === Heist Cooldown Markers (UUID-matched, kill all belonging to this player) ===
# Tag self for UUID comparison
tag @s add cs.heist_clearing
# Store player UUID[0] for comparison
execute store result score #cs_pl_uuid ec.temp run data get entity @s UUID[0]
# Check each heist cooldown marker
execute as @e[type=marker,tag=heist.cooldown] run function evercraft:chrono_shard/reset/clear_heist_marker
tag @s remove cs.heist_clearing

# === Reset daily challenge flags (lets player re-do today's daily) ===
scoreboard players set @s ec.daily_done 0
scoreboard players set @s ec.tt_daily_done 0

# === Reset daily floor counter ===
scoreboard players set @s ec.dg_floors_today 0

tellraw @s [{"text":"\u2726 ","color":"dark_aqua"},{"text":"Instance Timers","color":"dark_green"},{"text":" have been cleared.","color":"white"}]
tellraw @s [{"text":"  ","color":"gray"},{"text":"All dungeon, trial, and heist lockouts are reset.","color":"dark_gray","italic":true}]
