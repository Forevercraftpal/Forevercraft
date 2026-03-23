# Process a single laborer entity (runs as the laborer villager, at its position)

# === FIND OWNER (tag ec.lb_owner on matched player) ===
function evercraft:laborer/find_owner

# === SYNC INTERACTION ENTITY POSITION ===
# Teleport the linked interaction entity to follow this laborer (NoAI means no wandering,
# but teleport_home can move the laborer, and this keeps things robust)
execute at @s as @e[type=interaction,tag=ec.lb_interact,distance=..10,limit=1] run tp @s ~ ~ ~

# === CHECK EXPEDITION STATE MACHINE ===

# State 0 (IDLE): Check if enough time since last expedition to start a new one
execute if score @s ec.lb_state matches 0 run function evercraft:laborer/expedition/check_start

# State 1 (PREPARING): 30-second visual delay before departure
execute if score @s ec.lb_state matches 1 run function evercraft:laborer/expedition/check_depart

# State 2 (ON_EXPEDITION): Check if expedition timer has expired
execute if score @s ec.lb_state matches 2 run function evercraft:laborer/expedition/check_return

# State 3 (RETURNED): Waiting for player to collect — show sparkle particles
execute if score @s ec.lb_state matches 3 run particle minecraft:happy_villager ~ ~2.2 ~ 0.3 0.2 0.3 0 3

# === SATISFACTION DISPLAY ===
function evercraft:laborer/update_name_color

# === VISUAL FEEDBACK ===
execute if score @s ec.lb_fed matches 1.. run function evercraft:laborer/visual_fed
execute if score @s ec.lb_fed matches 0 run particle minecraft:campfire_cosy_smoke ~ ~2 ~ 0.2 0.1 0.2 0.01 1

# === ZONE CONFINEMENT ===
function evercraft:laborer/check_zone

# === CLEANUP OWNER TAG ===
tag @a[tag=ec.lb_owner] remove ec.lb_owner
