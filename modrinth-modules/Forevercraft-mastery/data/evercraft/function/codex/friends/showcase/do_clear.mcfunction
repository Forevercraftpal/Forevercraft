# Showcase — Clear a pin slot (run as player)

# Save empty pin to the slot
execute store result storage evercraft:showcase temp.self_uuid3 int 1 run data get entity @s UUID[3]
execute store result storage evercraft:showcase temp.save_slot int 1 run scoreboard players get @s ec.sc_slot

# Write empty entry
data modify storage evercraft:showcase temp.picked_entry set value {id:"",name:"",desc:"",color:""}
function evercraft:codex/friends/showcase/save_pin with storage evercraft:showcase temp

# Leave picker mode
tag @s remove ec.sc_in_picker

# Kill picker entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_picker_el,distance=..5]

# Re-render slots
function evercraft:codex/friends/showcase/spawn_slots

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.8
