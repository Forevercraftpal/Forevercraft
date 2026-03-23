# Showcase — Process achievement pick (run as player)

# Read the picked achievement from temp.picks
execute store result storage evercraft:showcase temp.picked_idx int 1 run scoreboard players get #sc_picked ec.temp
function evercraft:codex/friends/showcase/read_pick with storage evercraft:showcase temp

# Save the pin to player storage
execute store result storage evercraft:showcase temp.self_uuid3 int 1 run data get entity @s UUID[3]
execute store result storage evercraft:showcase temp.save_slot int 1 run scoreboard players get @s ec.sc_slot
function evercraft:codex/friends/showcase/save_pin with storage evercraft:showcase temp

# Leave picker mode
tag @s remove ec.sc_in_picker

# Kill picker entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_picker_el,distance=..5]

# Re-render slots with updated pins
function evercraft:codex/friends/showcase/spawn_slots

# Success feedback
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.5 1.2
