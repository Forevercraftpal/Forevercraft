# Forevercraft Init — Custom Build
# Modules: core, milestones


# ══════════ MODULE: CORE ══════════
# Forevercraft Main Init - Run on datapack load
# Initializes all Forevercraft systems


# === NEWCOMER SPIRIT WEAPON CHOICE ===
scoreboard objectives add ec.newcomer_pick trigger "Spirit Weapon Choice"
scoreboard players enable @a ec.newcomer_pick


# === NOTIFICATION VOLUME CONTROL ===
scoreboard objectives add ec.notify_lvl trigger "Notify Level"
scoreboard objectives add ec.notify dummy "Notify Setting"
scoreboard players enable @a ec.notify_lvl

# === LODESTONE MARKER TAG MIGRATION ===
# Ensures all existing lodestone markers have the shared tag for fallback scan detection
execute as @e[type=marker,tag=HS.Marker] run tag @s add ec.lodestone_registered
execute as @e[type=marker,tag=ec.gs_marker] run tag @s add ec.lodestone_registered
execute as @e[type=marker,tag=TX.Marker] run tag @s add ec.lodestone_registered
execute as @e[type=marker,tag=RF.Marker] run tag @s add ec.lodestone_registered



# === GAMERULES ===
gamerule minecraft:send_command_feedback false
# Slow daylight: we manually advance DayTime by 1 every 3 ticks
gamerule minecraft:advance_time false
# Disable vanilla sleep skip — datapack handles sleep detection + time advance manually
# (vanilla sleep wakes players before our 100-tick timer can fire)
gamerule minecraft:players_sleeping_percentage 200



# === PLAYER SESSION RESET ===
# Track disconnects so we can detect real logins (tags persist through logout)
scoreboard objectives add ec.leave minecraft.custom:minecraft.leave_game
# Clear join tag so dream rate notification shows on next tick
tag @a remove ec.joined



# === LUCK BUFF SYSTEM ===
scoreboard objectives add ec.var dummy
scoreboard players set #8 ec.const 8



# === DAY COUNTER CONSTANTS ===
scoreboard players set #365 ec.const 365
scoreboard players set #25 ec.const 25



# === PLAYER STATS SYSTEM ===
scoreboard objectives add ec.stats trigger "Player Stats"
scoreboard players enable @a ec.stats
scoreboard players set #100000 ec.const 100000



# === TOME OF EXPERIENCE ===
scoreboard objectives add ec.tome_lvl dummy "Tome Stored Levels"
scoreboard objectives add ec.tome_pts dummy "Tome Stored Points"



# === GUI SESSION OWNERSHIP (multiplayer menu isolation) ===
scoreboard objectives add adv.gui_session dummy "GUI Session"



# === DEBUG SYSTEM ===
scoreboard objectives add ec.debug dummy "Debug Flags"



# === SCHEDULE BOOTSTRAPS (OPT-2/3/5, Session 9) ===
# Initialize time tracking scores to prevent false-triggers on first tick
# Slow daylight: DayTime advances 1/3 speed, so daytime IS visual_time (0-24000)
# and day IS visual_day (increments every 72000 real ticks)
execute store result score #prev_time ec.var run time query daytime
execute store result score #time ec.var run time query daytime
execute store result score #prev_day ec.var run time query day
execute store result score #current_day ec.var run time query day
execute store result score #visual_time ec.var run time query daytime
scoreboard players operation #prev_vtime ec.var = #visual_time ec.var
execute store result score #visual_day ec.var run time query day
scoreboard players operation #prev_visual_day ec.var = #visual_day ec.var
execute store result score #quest_visual_day ec.var run time query day
scoreboard players operation #quest_prev_visual_day ec.var = #quest_visual_day ec.var
# Moon phase = day % 8
scoreboard players operation #moon_phase ec.var = #visual_day ec.var
scoreboard players operation #moon_phase ec.var %= #8 ec.const
# Daylight counter (0-2, time add 1 when it hits 3)
scoreboard players set #daylight_counter ec.var 0
# Sleep skip cooldown
scoreboard players set #sleep_skip_cd ec.var 0
scoreboard players set #sleep_wait ec.var 0
scoreboard players set #sleep_poll ec.var 0
schedule function evercraft:luck_buffs/tick 1s
schedule function evercraft:portal_dial/tick 1s
schedule function evercraft:artifacts/sets/check_tick 1s
schedule function evercraft:xp_magnet/tick 2t
schedule function evercraft:harvest/intercept_xp_markers 4t



# === VISUAL TIME TRACKER (S70) ===
scoreboard players set #sleep_fix ec.var 0
function evercraft:visual_time/load



# === CLICK EVENT TRIGGERS (non-op safe) ===
# Replace /function click_events with /trigger for Realms/non-op compatibility
scoreboard objectives add ec.ncore trigger "Netherite Core Config"
scoreboard objectives add ec.codex_tp trigger "Codex TP"
scoreboard objectives add ec.quest trigger "Quest Board"
scoreboard players enable @a ec.ncore
scoreboard players enable @a ec.codex_tp
scoreboard players enable @a ec.quest



# === MESSAGE IN A BOTTLE SYSTEM ===
function evercraft:bottles/load



# === WELCOME BACK BRIEFING ===
function evercraft:briefing/load



# === CAMPFIRE HEALING SYSTEM ===
function evercraft:campfire_heal/load



# === BATCH ENTITY CLEANUP ===
function evercraft:cleanup/load



# === SHARED MOVEMENT DETECTION (OPT: lore/forage/prospect share 1 Pos read) ===
scoreboard objectives add ec.moving dummy "Shared Moving Flag"
scoreboard objectives add ec.move_lastx dummy "Shared Last X"
scoreboard objectives add ec.move_lastz dummy "Shared Last Z"
schedule function evercraft:movement/tick 1s



# === DAILY LOGIN GIFT (6hr cooldown) ===
scoreboard objectives add ec.last_gift_time dummy "Last Gift Time"



# === DIFFICULTY SYSTEM ===
function evercraft:difficulty/load

# ══════════ MODULE: MILESTONES ══════════
# === ACHIEVEMENT INIT COOLDOWN ===
scoreboard players set #ach_init_cd ec.var 0



# === REALM MILESTONES (cooperative realm-wide goals) ===
function evercraft:milestones/load



# === PERSONAL & CRAFTFOREVER MILESTONES (claim engine) ===
function evercraft:milestones/personal/load
function evercraft:milestones/craftforever/load