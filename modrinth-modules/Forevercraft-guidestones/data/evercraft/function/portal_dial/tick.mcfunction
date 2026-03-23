# Portal Dial — Detection loop (now 1s schedule, OPT-5 Session 9)
# Detects when a Portal Dial first gets bound to a lodestone and charges 30 levels
# After first bind (30 levels), re-binding to different lodestones is free

# Reschedule first (guarantees we keep ticking regardless of gate)
schedule function evercraft:portal_dial/tick 1s

# Gate: skip logic if no players online
execute unless entity @a run return 0

# OPT: Single @a pass — cooldown + mainhand/offhand bind checks
execute as @a run function evercraft:portal_dial/tick_player

