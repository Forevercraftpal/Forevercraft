# Seasonal System — Init
# 4 seasons, 16 days each, 64-day year cycle
# Autumn(0) → Winter(1) → Spring(2) → Summer(3)

# Constants
scoreboard players set #64 ec.const 64
scoreboard players set #16 ec.const 16

# Initialize season state (derived from visual_day, not stored)
scoreboard players set #season_id ec.var 0
scoreboard players set #season_day ec.var 0
scoreboard players set #season_prev ec.var -1

# Loading flag — prevents on_change from triggering a resource pack swap on startup
# (on_change still announces the season, just skips the swap signal)
scoreboard players set #season_loading ec.var 1

# Calculate current season on load
function evercraft:seasons/update
# Sync prev to avoid false transition on first load
scoreboard players operation #season_prev ec.var = #season_id ec.var

# Clear loading flag + swap pending (server just started, pack is already correct)
scoreboard players set #season_loading ec.var 0
scoreboard players set #season_swap_pending ec.var 0

# Initialize seasonal effects cooldown counters
scoreboard players set #spring_spawn_cd ec.var 0
scoreboard players set #spring_flower_cd ec.var 0
scoreboard players set #summer_buff_cd ec.var 0
scoreboard players set #winter_snow_cd ec.var 0
scoreboard players set #snow_melt_active ec.var 0
scoreboard players set #snow_melt_cd ec.var 0
scoreboard players set #snow_melt_cycles ec.var 0
scoreboard players set #summer_heat_cd ec.var 0

# Start seasonal effects tick (1s schedule — ambient particles, spawns, buffs)
schedule function evercraft:seasons/effects/tick 1s
