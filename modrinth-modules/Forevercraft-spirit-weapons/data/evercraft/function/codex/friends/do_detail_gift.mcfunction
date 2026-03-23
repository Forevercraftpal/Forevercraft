# Codex Friends — Send gift to selected friend
# @s = player, ec.fr_target = friend's uuid3

# Set the gift trigger value and call send
scoreboard players operation @s ec.fr_gift = @s ec.fr_target
function evercraft:friends/gift/send
