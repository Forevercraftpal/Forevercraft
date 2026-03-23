# Codex Friends — Cycle family title for selected friend
# @s = player, ec.fr_target = friend's uuid3
# Title cycle: friend → brother → sister → mother → father → grandma → grandpa → cousin → uncle → aunt → (back to friend)

# Set clicked uuid3 for find_detail_loop before loading
scoreboard players operation #fr_clicked_uuid3 ec.temp = @s ec.fr_target

# Read current title from storage
execute store result storage evercraft:friends temp.self_uuid3 int 1 run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.target_uuid3 int 1 run scoreboard players get @s ec.fr_target
function evercraft:codex/friends/load_friend_detail with storage evercraft:friends temp

# Map current title string to ID
scoreboard players set #fr_cur_title ec.temp 0
execute if data storage evercraft:friends temp.detail_title run function evercraft:codex/friends/get_title_id

# Advance to next title (skip spouse=10, that's auto-assigned)
scoreboard players add #fr_cur_title ec.temp 1
execute if score #fr_cur_title ec.temp matches 10.. run scoreboard players set #fr_cur_title ec.temp 0

# Directly set the scores that title/set uses after decoding (avoids broken encoding for large uuid3)
scoreboard players operation #fr_title_id ec.temp = #fr_cur_title ec.temp
scoreboard players operation #fr_title_target_uuid3 ec.temp = @s ec.fr_target
execute store result score #fr_self_uuid3 ec.temp run data get entity @s UUID[3]
execute store result storage evercraft:friends temp.self_uuid3 int 1 run scoreboard players get #fr_self_uuid3 ec.temp
execute store result storage evercraft:friends temp.title_target_uuid3 int 1 run scoreboard players get #fr_title_target_uuid3 ec.temp

# Map title ID to string
data modify storage evercraft:friends temp.new_title set value "friend"
execute if score #fr_title_id ec.temp matches 1 run data modify storage evercraft:friends temp.new_title set value "brother"
execute if score #fr_title_id ec.temp matches 2 run data modify storage evercraft:friends temp.new_title set value "sister"
execute if score #fr_title_id ec.temp matches 3 run data modify storage evercraft:friends temp.new_title set value "mother"
execute if score #fr_title_id ec.temp matches 4 run data modify storage evercraft:friends temp.new_title set value "father"
execute if score #fr_title_id ec.temp matches 5 run data modify storage evercraft:friends temp.new_title set value "grandmother"
execute if score #fr_title_id ec.temp matches 6 run data modify storage evercraft:friends temp.new_title set value "grandfather"
execute if score #fr_title_id ec.temp matches 7 run data modify storage evercraft:friends temp.new_title set value "cousin"
execute if score #fr_title_id ec.temp matches 8 run data modify storage evercraft:friends temp.new_title set value "uncle"
execute if score #fr_title_id ec.temp matches 9 run data modify storage evercraft:friends temp.new_title set value "aunt"

# Update storage (on YOUR friend list — what title you gave them)
function evercraft:friends/title/do_set with storage evercraft:friends temp

# Notify self immediately
function evercraft:friends/title/notify with storage evercraft:friends temp

# Update title unlock on TARGET's storage
execute store result storage evercraft:friends temp.setter_cid int 1 run scoreboard players get @s companion.id
execute store result storage evercraft:friends temp.set_gametime int 1 run time query gametime
function evercraft:friends/title/update_unlock with storage evercraft:friends temp

# Refresh the detail view
scoreboard players operation #fr_clicked_uuid3 ec.temp = @s ec.fr_target
function evercraft:codex/friends/refresh_detail_title

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
