# Showcase — View other player's showcase (run as player)
# Uses ec.fr_target scoreboard which holds the friend's uuid3

# Get target uuid3
execute store result storage evercraft:showcase temp.target_uuid3 int 1 run scoreboard players get @s ec.fr_target

# Check if target has showcase data
function evercraft:codex/friends/showcase/check_other_pins with storage evercraft:showcase temp

# Kill detail view entities
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.fr_gui_detail,distance=..5]

# Hide section title (other-view has its own header)
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:""}

# Tag player for showcase mode
tag @s add ec.sc_in_showcase
tag @s add ec.sc_view_other
tag @s remove ec.fr_detail_view

# Get target player's companion.id for name display
execute store result storage evercraft:showcase temp.target_cid int 1 run data get storage evercraft:friends temp.detail_cid

# === BEST FRIEND TELEPORT BUTTON ===
# Check if this friend qualifies (90+ hearts)
execute store result score #sc_detail_hearts ec.temp run data get storage evercraft:friends temp.detail_hearts
scoreboard players set #sc_is_best ec.temp 0
execute if score #sc_detail_hearts ec.temp >= #fr_best ec.const run scoreboard players set #sc_is_best ec.temp 1

# If best friend, compute TP cooldown state
execute store result storage evercraft:friend_tp temp.self_uuid3 int 1 run data get entity @s UUID[3]
data modify storage evercraft:friend_tp temp.target_uuid3 set from storage evercraft:showcase temp.target_uuid3
execute if score #sc_is_best ec.temp matches 1 run function evercraft:codex/friends/showcase/check_tp_cooldown with storage evercraft:friend_tp temp

# Spawn read-only showcase view
function evercraft:codex/friends/showcase/spawn_other_slots with storage evercraft:showcase temp

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
