# Dream rate buffs based on time of day, weather, and moon phase
# Runs on 1s schedule (OPT-5, Session 9) — moved from per-tick
# Slow daylight: DayTime advances 1/3 speed, daytime IS visual_time (0-24000)
# Morning 0-6000, Noon 6000-13000, Night 13000-23000, Dawn 23000-24000

# Early exit if no players
execute unless entity @a run return run schedule function evercraft:luck_buffs/tick 1s

# Save previous visual_time for threshold crossing detection
scoreboard players operation #prev_vtime ec.var = #visual_time ec.var

# DayTime is now visual_time directly (no sub_day computation needed)
execute store result score #visual_time ec.var run time query daytime

# Track day number for dawn reset
scoreboard players operation #prev_visual_day ec.var = #visual_day ec.var
execute store result score #visual_day ec.var run time query day

# Get moon phase (0-7, where 0 = full moon, 4 = new moon)
# Save previous phase for dawn_reset (needs to know LAST NIGHT's phase, not the new day's)
scoreboard players operation #prev_moon_phase ec.var = #moon_phase ec.var
scoreboard players operation #moon_phase ec.var = #visual_day ec.var
scoreboard players operation #moon_phase ec.var %= #8 ec.const

# === SLEEP FIX: Skip remaining night when time jumped but it's still night ===
# If visual_time jumped forward >300 ticks (sleep/time command) and still night,
# advance time to dawn so players don't have to sleep twice
scoreboard players operation #vtime_delta ec.var = #visual_time ec.var
scoreboard players operation #vtime_delta ec.var -= #prev_vtime ec.var
execute if score #visual_time ec.var matches 13000..23000 if score #vtime_delta ec.var matches 300.. run function evercraft:visual_time/sleep_skip

# Apply dream rate buffs to all players
execute as @a run function evercraft:luck_buffs/apply

# === RAID DETECTION: Track raid_omen consumption to detect real raids ===
# Tag players who currently have raid_omen effect
execute as @a[nbt={active_effects:[{id:"minecraft:raid_omen"}]}] run tag @s add rp.has_omen
# If player HAD omen but doesn't now AND is near a village → real raid started
execute as @a[tag=rp.has_omen] unless entity @s[nbt={active_effects:[{id:"minecraft:raid_omen"}]}] if score @s ec.current_village matches 1.. run tag @s add rp.raiding
# Clear omen tracker when effect is gone
execute as @a[tag=rp.has_omen] unless entity @s[nbt={active_effects:[{id:"minecraft:raid_omen"}]}] run tag @s remove rp.has_omen

# Track current day per-player for "While You Were Away" briefing (OPT-6: moved from per-tick)
scoreboard players operation @a ec.last_day = #visual_day ec.var

# === DUSK EVENTS (fires once per day at nightfall ~13000) ===
# Previous visual_time < 13000 AND current visual_time >= 13000 = dusk crossing
execute if score #prev_vtime ec.var matches ..12999 if score #visual_time ec.var matches 13000.. unless score #ec_moon_notified ec.var matches 1 run function evercraft:luck_buffs/moon_events

# === DAWN RESET (day number change — fires once per 72000 real ticks) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var if score #ec_moon_notified ec.var matches 1 run function evercraft:luck_buffs/dawn_reset

# === COMPETITION SCHEDULE (fires once per dawn — roll for today's competition) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var run function evercraft:competition/schedule

# === DAILY CHALLENGE ROLL (fires once per dawn — pick today's dungeon + modifier + trial) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var run function evercraft:dungeon/daily_challenge/roll
execute unless score #visual_day ec.var = #prev_visual_day ec.var run function evercraft:craftforever/trials/daily_roll_global
execute unless score #visual_day ec.var = #prev_visual_day ec.var as @a run function evercraft:dungeon/daily_challenge/personal_roll

# === PERSONAL DAILY CATCH-UP (for players who joined after dawn) ===
execute as @a unless score @s ec.daily_day = #visual_day ec.var run function evercraft:dungeon/daily_challenge/personal_roll

# === DAY COUNTER (fires once per dawn — RPG day/era title splash) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var run function evercraft:day_counter/dawn_display

# === FRIEND DAILY RESET (fires once per dawn — reset daily heart flags) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var run function evercraft:friends/daily_reset

# === FOREVERCRAFT NEWS: dawn reset (copy today→yesterday, zero today) ===
execute unless score #visual_day ec.var = #prev_visual_day ec.var run function evercraft:news/dawn_reset

# === FOREVERCRAFT NEWS: 9 AM announcement (DayTime 3000 = 9:00 AM) ===
# Daily Challenge is now part of the news broadcast (no separate 10am announcement)
execute if score #prev_vtime ec.var matches ..2999 if score #visual_time ec.var matches 3000.. run function evercraft:news/morning_announce

# === COMPETITION: Start at noon (DayTime 6000), tick while active ===
execute if score #prev_vtime ec.var matches ..5999 if score #visual_time ec.var matches 6000.. if score #comp_day_type ec.var matches 1..6 unless score #comp_active ec.var matches 1..6 run function evercraft:competition/start
execute if score #comp_active ec.var matches 1..6 run function evercraft:competition/tick
# === H2H COMPETITION: Tick while active ===
execute if score #h2h_active ec.var matches 1..6 run function evercraft:competition/h2h/tick

# === DREAM RATE MILESTONES (every 10s — gametime % 200) ===
execute store result score #gt_drms ec.temp run time query gametime
scoreboard players operation #gt_drms ec.temp %= #200 ec.const
execute if score #gt_drms ec.temp matches 0 as @a run function evercraft:dreams/milestones/check

# Reschedule
schedule function evercraft:luck_buffs/tick 1s
