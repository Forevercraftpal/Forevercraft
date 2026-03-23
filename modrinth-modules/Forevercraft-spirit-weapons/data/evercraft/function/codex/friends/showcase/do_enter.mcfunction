# Showcase — Enter (self-view, run as player at player)

# Kill all friend list GUI elements
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.fr_gui_el,distance=..5]

# Update section title to showcase
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value [{text:"\u2726 ",color:"dark_gray"},{text:"My Showcase",color:"gold",bold:true},{text:" \u2726",color:"dark_gray"}]

# Tag player as in showcase
tag @s add ec.sc_in_showcase
scoreboard players set @s ec.sc_slot -1

# Load player's pins from storage
execute store result storage evercraft:showcase temp.self_uuid3 int 1 run data get entity @s UUID[3]

# Initialize pins if they don't exist yet
function evercraft:codex/friends/showcase/init_pins with storage evercraft:showcase temp

# Spawn the showcase view
function evercraft:codex/friends/showcase/spawn_slots

# Stamp session on ALL showcase entities
execute as @e[tag=ec.sc_gui_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp

# Play open sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
