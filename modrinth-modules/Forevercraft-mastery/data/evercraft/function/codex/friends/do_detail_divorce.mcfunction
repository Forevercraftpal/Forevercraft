# Codex Friends — Divorce from detail view
# @s = player, ec.fr_target = friend's uuid3 (spouse)

# Call divorce handler
function evercraft:friends/marriage/divorce

# Refresh the detail view (buttons will change)
scoreboard players operation #fr_clicked_uuid3 ec.temp = @s ec.fr_target
tag @s remove ec.fr_detail_view
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] at @s run kill @e[tag=ec.fr_gui_detail,distance=..5]
function evercraft:codex/friends/open_detail
