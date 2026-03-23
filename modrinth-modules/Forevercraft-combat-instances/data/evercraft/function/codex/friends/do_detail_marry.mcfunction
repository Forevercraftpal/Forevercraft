# Codex Friends — Propose marriage to selected friend
# @s = player, ec.fr_target = friend's uuid3

# Set trigger to target's uuid3 and call propose
scoreboard players operation @s ec.fr_marry = @s ec.fr_target
function evercraft:friends/marriage/propose

# Refresh the detail view (buttons may change)
scoreboard players operation #fr_clicked_uuid3 ec.temp = @s ec.fr_target
tag @s remove ec.fr_detail_view
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] at @s run kill @e[tag=ec.fr_gui_detail,distance=..5]
function evercraft:codex/friends/open_detail
