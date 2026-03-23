# World Events — Load
# Initialize spontaneous event state variables
# Events: 1=Starfall, 2=The Dreaming, 3=Abyssal Tremor, 4=Aurora Bloom, 5=Rift Echo

# Core state (only init if unset — preserves across reloads)
execute unless score #we_active ec.var matches 0.. run scoreboard players set #we_active ec.var 0
execute unless score #we_event_id ec.var matches 0.. run scoreboard players set #we_event_id ec.var 0
execute unless score #we_timer ec.var matches 0.. run scoreboard players set #we_timer ec.var 0

# Average DR tracking (recalculated every check, no persistence needed)
scoreboard players set #we_avg_dr ec.var 0
scoreboard players set #we_player_count ec.var 0

# Cooldown timestamps (gametime-based, preserve across reloads)
execute unless score #we_starfall_cd ec.var matches 0.. run scoreboard players set #we_starfall_cd ec.var 0
execute unless score #we_dreaming_cd ec.var matches 0.. run scoreboard players set #we_dreaming_cd ec.var 0
execute unless score #we_abyssal_cd ec.var matches 0.. run scoreboard players set #we_abyssal_cd ec.var 0
execute unless score #we_aurora_cd ec.var matches 0.. run scoreboard players set #we_aurora_cd ec.var 0
execute unless score #we_rift_echo_cd ec.var matches 0.. run scoreboard players set #we_rift_echo_cd ec.var 0

# One-time milestone flag (The Dreaming: has ANY player EVER hit DR 30?)
execute unless score #dream_30_ever ec.var matches 0.. run scoreboard players set #dream_30_ever ec.var 0

# FX counter
scoreboard players set #we_fx ec.var 0

# Schedule tick loop
schedule function evercraft:world_events/tick 60s
