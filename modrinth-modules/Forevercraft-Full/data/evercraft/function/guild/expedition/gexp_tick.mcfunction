# Guild Expedition — 5s Self-Scheduling Tick
# Dispatches to vote timer check or progress tracking based on expedition state

schedule function evercraft:guild/expedition/gexp_tick 5s

# Skip if no guilded players online
execute unless entity @a[scores={ec.guild_id=1..}] run return 0

# Process guild markers with active expeditions at 0 -61 0
# State 1 = VOTING: check if vote timer expired
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2] if data entity @s data.expedition{state:1} run function evercraft:guild/expedition/vote/check_timer

# State 2 = ACTIVE: track progress
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2] if data entity @s data.expedition{state:2} run function evercraft:guild/expedition/progress/tick
