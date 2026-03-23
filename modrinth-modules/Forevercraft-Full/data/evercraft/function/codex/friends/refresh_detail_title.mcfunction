# Codex Friends — Refresh just the title text in detail view
# @s = player, #fr_clicked_uuid3 ec.temp = friend uuid3

# Re-read the title
execute store result storage evercraft:friends temp.self_uuid3 int 1 run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.target_uuid3 int 1 run scoreboard players get #fr_clicked_uuid3 ec.temp
function evercraft:codex/friends/load_friend_detail with storage evercraft:friends temp

# Get new title name
function evercraft:codex/friends/get_title_display

# Update the title text entity
function evercraft:codex/friends/set_title_text with storage evercraft:friends temp
