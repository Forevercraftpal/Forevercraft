# World Events — Active Event Dispatch
# OPT: Called once under #we_active=1 gate, routes to specific event tick
# Avoids 5 redundant #we_active checks

execute if score #we_event_id ec.var matches 1 run return run function evercraft:world_events/starfall/tick
execute if score #we_event_id ec.var matches 2 run return run function evercraft:world_events/the_dreaming/tick
execute if score #we_event_id ec.var matches 3 run return run function evercraft:world_events/abyssal_tremor/tick
execute if score #we_event_id ec.var matches 4 run return run function evercraft:world_events/aurora_bloom/tick
execute if score #we_event_id ec.var matches 5 run function evercraft:world_events/rift_echo/tick
