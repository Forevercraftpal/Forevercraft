# Watchdog - Check and restart self-scheduling tick loops
# Called every ~5 seconds (100 ticks) from main tick
# Restarts any scheduled functions that may have broken
#
# IMPORTANT: Only include functions with intervals SHORTER than 5s (100 ticks) here!
# Minecraft's `schedule` uses `replace` mode by default. If the watchdog schedules a
# function for X ticks but X > 100, the watchdog will fire again before X elapses and
# push the timer forward — preventing the function from EVER running.
# Functions with intervals >= 5s that self-schedule don't need the watchdog at all.
#
# STAGGER: Schedules use tick offsets (not `1s`) to spread functions across different
# ticks within each interval. Without staggering, all 1s functions fire on the same
# tick (~29 functions, 1000+ commands/player), causing periodic lag spikes.
# The watchdog period (100t) is evenly divisible by all intervals (2t, 4t, 5t, 10t, 20t),
# so the stagger is perfectly maintained across watchdog cycles.

# --- Gamerule self-correct (moved from per-tick — doesn't spontaneously reset) ---
execute store result score #adv_time_check ec.var run gamerule minecraft:advance_time
execute if score #adv_time_check ec.var matches 1 run gamerule minecraft:advance_time false

# --- 2t interval (staggered across 2 ticks) ---
schedule function evercraft:artifacts/abilities/double_jump_tick 2t
schedule function evercraft:world/timber/tick 2t
schedule function evercraft:health_bar/tick 3t
schedule function evercraft:xp_magnet/tick 3t

# --- 10t interval ---
schedule function evercraft:weapon_mastery/xp_tick 10t
schedule function evercraft:harvest/intercept_xp_markers 5t

# --- 5t interval (staggered across 5 ticks) ---
schedule function evercraft:artifacts/graviton_core/tick 5t
schedule function evercraft:artifacts/netherite_core/tick 6t
schedule function evercraft:mobs/villager/follow/init 7t

# --- 10t interval (staggered across 10 ticks) ---
schedule function evercraft:artifacts/mythical_tools/magnet 10t
schedule function evercraft:mob_crates/tick 11t
schedule function evercraft:mobs/init 12t
schedule function evercraft:mobs/spectator_waypoint_receive 13t
schedule function evercraft:mobs/patrons/particles/init 14t
schedule function evercraft:mobs/furia/particles/init 15t
schedule function evercraft:tomb/tick 16t
schedule function evercraft:lore/tick_particles 17t
schedule function evercraft:craftforever/nodes/tick_particles 18t

# --- 20t (1s) interval: 36 functions staggered across 20 ticks ---
# Heavy functions get dedicated tick slots (no sharing):
schedule function evercraft:artifacts/accessories/tick 1t
schedule function evercraft:artifacts/sets/check_tick 2t
schedule function evercraft:advantage/tick/main 3t
# Medium/light functions paired (max 2 per tick slot):
# worn_tick merged into accessories/tick (OPT-2)
# OPT: Rebalanced — moved bosses/tick from slot 4 (was 3 functions) to slot 10
schedule function evercraft:calendar/tick 4t
schedule function evercraft:guild/events/tick 4t
schedule function evercraft:artifacts/healer/tick 5t
schedule function evercraft:artifacts/dancer/tick_1s 5t
schedule function evercraft:glyphforge/tick 6t
schedule function evercraft:artifacts/berserker/tick_1s 6t
schedule function evercraft:glyphforge/effects/tick 7t
schedule function evercraft:artifacts/striker/tick_1s 7t
schedule function evercraft:luck_buffs/tick 8t
schedule function evercraft:lore/tick_spawn 8t
schedule function evercraft:portal_dial/tick 9t
schedule function evercraft:party/tick 9t
schedule function evercraft:trim_effects/check_slow 10t
schedule function evercraft:bosses/tick 10t
schedule function evercraft:quests/tick 11t
schedule function evercraft:companions/combat/tick 11t
schedule function evercraft:guidestone/tick 12t
schedule function evercraft:artifacts/shields/tick 12t
schedule function evercraft:mobs/patrons/check 13t
schedule function evercraft:artifacts/netherite_core/effects 13t
schedule function evercraft:mobs/furia/check 14t
schedule function evercraft:transmute/tick 14t
schedule function evercraft:companions/handler/schedule/timer 15t
schedule function evercraft:cave_darkness/tick 15t
schedule function evercraft:trim/tick_slow 15t
schedule function evercraft:professions/internal/tick 16t
schedule function evercraft:friends/tick 16t
schedule function evercraft:professions/jobs/wise_wanderer/gui/detect_interaction 17t
schedule function evercraft:cooking/buff/tick 17t
schedule function evercraft:armored_elytra/tick 18t
schedule function evercraft:black_market/tick 18t
schedule function evercraft:artifacts/hunter/tick 18t
schedule function evercraft:movement/tick 19t
schedule function evercraft:forage/tick_spawn 19t
schedule function evercraft:artifacts/javelin/cooldown_tick 19t
schedule function evercraft:prospect/tick_spawn 20t
schedule function evercraft:artifacts/archer/tick 20t
schedule function evercraft:buddy/tick 20t
# biome_mastery moved to 5s — no longer in watchdog (would block 5s self-schedule)

# --- 20t interval ---
schedule function evercraft:trim/single/raiser/restock_scheduled 20t

# --- 2s (40t) interval ---
schedule function evercraft:housing/tick 2s
schedule function evercraft:harmonize/tick 21t
schedule function evercraft:world/crop_replant/tick 39t

# ============================================================================
# NOT in watchdog — these self-schedule at intervals >= 5s and would be blocked
# by the watchdog's 5s replace cycle. They bootstrap from their own load functions.
# ============================================================================
# evercraft:structures/storage/tick_refresh        (200t / 10s)
# evercraft:mobs/locator_bar/init                  (15s)
# evercraft:mobs/baby_mount/scheduled              (60s)
# evercraft:mobs/check_gamerules                   (300s)
# evercraft:mobs/jeb_sheep/change_color/run        (10s)
# evercraft:mobs/misc_modifications                (5s)
# evercraft:achievements/tick                      (100t / 5s)
# evercraft:advantage/track/sync_stats             (5s)
# evercraft:advantage/beastmaster/wolf_tick        (20t) — fine but self-schedules
# evercraft:world/sapling_replant/tick             (5s)
# evercraft:artifacts/mythical_tools/hoe_of_honor/passive_harvest (20t) — fine but self-schedules
# trim:ascendant                                   (6s)
# trim:single/dune/saturation                      (300s)
# evercraft:village/upgrades/tick_guards            (10s)
# evercraft:journal/tick                            (5s)
# evercraft:lore/tick_despawn                       (100t / 5s)
# evercraft:world_events/tick                       (60s idle / 1s active)
# evercraft:dream_echoes/particles                  (60t / 3s)
# evercraft:campfire_stories/check                  (100t / 5s)
# evercraft:campfire_heal/tick                       (140t / 7s)
# evercraft:inscription/effects_tick                (100t / 5s)
# evercraft:biome/tick                              (5s)
# evercraft:biome_mastery/tick                      (5s) — moved from 1s
# evercraft:milestones/check                        (60s)
# evercraft:tamed_protection/tick                    (5s)
