# Showcase — Back (run as player at player)
# Returns to friends list (from self-view) or friend detail (from other-view)

# Kill all showcase GUI elements
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.sc_gui_el,distance=..5]

# If was viewing other player's showcase, return to friend detail
execute if entity @s[tag=ec.sc_view_other] run return run function evercraft:codex/friends/showcase/back_to_detail

# Self-view: clean up and return to friends list
function evercraft:codex/friends/showcase/exit

# Restore section title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Friends \u2726",color:"#E0B0FF",bold:true}

function evercraft:codex/friends/enter
