# Showcase — Raycast View (tellraw display of target's pins)
# @s = player who used codex, target tagged ec.fr_ray_target
# Called when sneak+codex aimed at an existing friend

# Get target's UUID3 for storage lookup
execute store result storage evercraft:showcase temp.target_uuid3 int 1 run data get entity @a[tag=ec.fr_ray_target,limit=1] UUID[3]

# Init target's pins if they don't exist
function evercraft:codex/friends/showcase/raycast_init_pins with storage evercraft:showcase temp

# Load target's pins to temp
function evercraft:codex/friends/showcase/raycast_load_pins with storage evercraft:showcase temp

# Get target's companion.id for selector-based name
execute store result storage evercraft:showcase temp.target_cid int 1 run scoreboard players get @a[tag=ec.fr_ray_target,limit=1] companion.id

# Header
function evercraft:codex/friends/showcase/raycast_header with storage evercraft:showcase temp

# Display each pin (or "empty" if not set)
data modify storage evercraft:showcase temp.pin set from storage evercraft:showcase temp.pins[0]
data modify storage evercraft:showcase temp.pin.slot set value "1"
execute if data storage evercraft:showcase temp.pin{id:""} run tellraw @s [{text:"  "},{"text":"1. ","color":"gray"},{"text":"- Empty -","color":"dark_gray"}]
execute unless data storage evercraft:showcase temp.pin{id:""} run function evercraft:codex/friends/showcase/raycast_display with storage evercraft:showcase temp.pin

data modify storage evercraft:showcase temp.pin set from storage evercraft:showcase temp.pins[1]
data modify storage evercraft:showcase temp.pin.slot set value "2"
execute if data storage evercraft:showcase temp.pin{id:""} run tellraw @s [{text:"  "},{"text":"2. ","color":"gray"},{"text":"- Empty -","color":"dark_gray"}]
execute unless data storage evercraft:showcase temp.pin{id:""} run function evercraft:codex/friends/showcase/raycast_display with storage evercraft:showcase temp.pin

data modify storage evercraft:showcase temp.pin set from storage evercraft:showcase temp.pins[2]
data modify storage evercraft:showcase temp.pin.slot set value "3"
execute if data storage evercraft:showcase temp.pin{id:""} run tellraw @s [{text:"  "},{"text":"3. ","color":"gray"},{"text":"- Empty -","color":"dark_gray"}]
execute unless data storage evercraft:showcase temp.pin{id:""} run function evercraft:codex/friends/showcase/raycast_display with storage evercraft:showcase temp.pin

# Footer
tellraw @s [{text:"  "},{"text":"━━━━━━━━━━━━━━━━━━━━━━━━","color":"dark_gray"}]

playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.0
