# Showcase — Return to friend detail view after viewing their showcase

function evercraft:codex/friends/showcase/exit

# Restore section title
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Friends \u2726",color:"#E0B0FF",bold:true}

function evercraft:codex/friends/open_detail
