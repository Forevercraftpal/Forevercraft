# ============================================================
# Guild Events — Tick (1s self-scheduling loop)
# Detects noon, day transitions, dispatches active events
# ============================================================

# Skip if no guilded players online
execute unless entity @a[scores={ec.guild_id=1..}] run schedule function evercraft:guild/events/tick 1s
execute unless entity @a[scores={ec.guild_id=1..}] run return 0

# === NOON DETECTION ===
# Peak noon = DayTime 6000. Detect crossing from <6000 to >=6000.
# Only fire once per day (check #ge_last_noon_day != current day)
execute unless score #ge_noon_active ec.var matches 1 if score #visual_time ec.var matches 6000..6100 unless score #ge_last_noon_day ec.var = #visual_day ec.var run function evercraft:guild/events/noon/start

# === ACTIVE NOON EVENT TICK ===
execute if score #ge_noon_active ec.var matches 1 run function evercraft:guild/events/noon/tick

# === EXPEDITION — Daily roll on day change ===
execute unless score #expedition_day ec.var = #visual_day ec.var run function evercraft:guild/expedition/roll_daily

# === DAY TRANSITION CHECKS ===
# Weekly event: every 7 days
scoreboard players operation #ge_week_check ec.temp = #visual_day ec.var
scoreboard players operation #ge_week_check ec.temp -= #ge_weekly_day ec.var
execute if score #ge_week_check ec.temp matches 7.. run function evercraft:guild/events/weekly/end

# Scatter event trigger: every 4 days at noon (6000-6100 daytime)
scoreboard players operation #ge_scat_check ec.temp = #visual_day ec.var
scoreboard players operation #ge_scat_check ec.temp -= #ge_scatter_day ec.var
execute unless score #ge_scatter_active ec.var matches 1 if score #ge_scat_check ec.temp matches 4.. if score #visual_time ec.var matches 6000..6100 run function evercraft:guild/events/scatter/start

# === ACTIVE SCATTER EVENT TICK ===
execute if score #ge_scatter_active ec.var matches 1 run function evercraft:guild/events/scatter/tick

# === EVENT TELEPORT TRIGGER ===
execute as @a[scores={ec.ge_event_tp=1..}] run function evercraft:guild/events/teleport_in
scoreboard players enable @a[scores={ec.ge_event_tp=1..}] ec.ge_event_tp
scoreboard players set @a[scores={ec.ge_event_tp=1..}] ec.ge_event_tp 0

# Self-schedule
schedule function evercraft:guild/events/tick 1s
