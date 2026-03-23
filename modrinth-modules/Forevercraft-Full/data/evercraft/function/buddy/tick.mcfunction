# Buddy System — Main Tick (1s self-schedule)
# Dispatches per-player buddy checks

schedule function evercraft:buddy/tick 20t replace

# Process confirmation triggers (1=Yes, 2=No, 3=Keep Name, 4=Rename)
# OPT: enable moved to on_join + after use (line 15) — was every 20t for all players
execute as @a[scores={ec.bd_confirm=1}] run function evercraft:buddy/designate/accept
execute as @a[scores={ec.bd_confirm=2}] run function evercraft:buddy/designate/decline
execute as @a[scores={ec.bd_confirm=3}] run function evercraft:buddy/naming/keep_name
execute as @a[scores={ec.bd_confirm=4}] run function evercraft:buddy/naming/do_rename
execute as @a[scores={ec.bd_confirm=1..}] run scoreboard players set @s ec.bd_confirm 0
execute as @a[scores={ec.bd_confirm=1..}] run scoreboard players enable @s ec.bd_confirm

# Decrement designation countdown (40 ticks, checked every 20 ticks = 2 checks)
execute as @a[scores={ec.bd_designating=1..}] run scoreboard players remove @s ec.bd_designating 20
# Only check timeout for players who HAD an active designation (uuid0 non-zero)
execute as @a[scores={ec.bd_designating=..0,ec.bd_des_uuid0=1..}] run function evercraft:buddy/designate/timeout
execute as @a[scores={ec.bd_designating=..0,ec.bd_des_uuid0=..-1}] run function evercraft:buddy/designate/timeout

# Daily reset: feed counter and summon counter
# Uses #visual_day from the daylight system (updated every tick)
execute unless score #bd_last_day ec.var = #visual_day ec.var run scoreboard players set @a ec.bd_feed_today 0
execute unless score #bd_last_day ec.var = #visual_day ec.var run scoreboard players set @a ec.bd_summon_ct 0
execute unless score #bd_last_day ec.var = #visual_day ec.var run scoreboard players operation #bd_last_day ec.var = #visual_day ec.var

# Per-player buddy tick (only for players who have a buddy)
execute as @a[scores={ec.bd_tier=0..}] at @s run function evercraft:buddy/tick_player

# Best buddy combat AI (attacks hostiles)
execute as @a[scores={ec.bd_best_active=1}] at @s run function evercraft:buddy/best/combat/tick

# Best buddy revive timer (when dead, counting down)
execute as @a[scores={ec.bd_best_dead=1}] run function evercraft:buddy/best/revive/tick_revive
