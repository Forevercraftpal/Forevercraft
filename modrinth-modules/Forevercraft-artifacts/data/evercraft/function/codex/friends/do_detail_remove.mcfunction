# Codex Friends — Show removal confirmation
# @s = player, ec.fr_target = friend's uuid3

# Store target uuid3 for macro tellraw (used for both display selector and trigger command)
execute store result storage evercraft:friends temp.confirm_cid int 1 run scoreboard players get @s ec.fr_target

# Show confirmation tellraw with clickable [Confirm] that fires the ec.fr_remove trigger
function evercraft:codex/friends/do_detail_remove_msg with storage evercraft:friends temp

playsound minecraft:block.note_block.bass master @s ~ ~ ~ 0.5 0.8
