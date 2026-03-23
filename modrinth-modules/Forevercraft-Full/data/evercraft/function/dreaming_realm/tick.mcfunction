# Dreaming Realm — Per-Tick Logic
# Only called when #dr_active = 1 (from main tick.mcfunction)

# OPT: Single @a scan for all per-player logic (was 7 separate scans)
execute as @a[tag=dr.in_realm] at @s run function evercraft:dreaming_realm/player_tick

# Challenge per-tick checks (maze step detection, wave check, trial fragments)
function evercraft:dreaming_realm/challenges/tick

# Atmosphere effects (every 20 ticks = 1 second)
scoreboard players add #dr_atmo ec.var 1
execute if score #dr_atmo ec.var matches 20.. as @a[tag=dr.in_realm] at @s run function evercraft:dreaming_realm/atmosphere_tick
execute if score #dr_atmo ec.var matches 20.. run scoreboard players set #dr_atmo ec.var 0
