# Codex Friends — Refresh page display
# Kills existing entry entities, reads friend list, spawns 5 entries for current page
# Run as player

# Kill existing entry entities (keep shell: header, page nav)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.fr_gui_entry,distance=..5]

# Update header: "Friends: X/50"
execute store result storage evercraft:friends temp.fr_count int 1 run scoreboard players get @s ec.fr_count
function evercraft:codex/friends/update_header with storage evercraft:friends temp

# Calculate total pages = ceil(friend_count / 5), min 1
scoreboard players set #fr_total_pages ec.temp 1
execute if score @s ec.fr_count matches 6.. run scoreboard players set #fr_total_pages ec.temp 2
execute if score @s ec.fr_count matches 11.. run scoreboard players set #fr_total_pages ec.temp 3
execute if score @s ec.fr_count matches 16.. run scoreboard players set #fr_total_pages ec.temp 4
execute if score @s ec.fr_count matches 21.. run scoreboard players set #fr_total_pages ec.temp 5
execute if score @s ec.fr_count matches 26.. run scoreboard players set #fr_total_pages ec.temp 6
execute if score @s ec.fr_count matches 31.. run scoreboard players set #fr_total_pages ec.temp 7
execute if score @s ec.fr_count matches 36.. run scoreboard players set #fr_total_pages ec.temp 8
execute if score @s ec.fr_count matches 41.. run scoreboard players set #fr_total_pages ec.temp 9
execute if score @s ec.fr_count matches 46.. run scoreboard players set #fr_total_pages ec.temp 10

# Clamp page to valid range
execute if score @s ec.fr_page matches ..0 run scoreboard players set @s ec.fr_page 1
execute store result score #fr_pg ec.temp run scoreboard players get @s ec.fr_page
execute if score #fr_pg ec.temp > #fr_total_pages ec.temp run scoreboard players operation @s ec.fr_page = #fr_total_pages ec.temp

# Update page indicator text
execute store result storage evercraft:friends temp.page int 1 run scoreboard players get @s ec.fr_page
execute store result storage evercraft:friends temp.total_pages int 1 run scoreboard players get #fr_total_pages ec.temp
function evercraft:codex/friends/update_page_text with storage evercraft:friends temp

# If no friends, show empty message and return
execute if score @s ec.fr_count matches ..0 run return run function evercraft:codex/friends/show_empty

# Load friend list from storage to temp
execute store result storage evercraft:friends temp.self_uuid3 int 1 run data get entity @s UUID[3]
function evercraft:codex/friends/load_list with storage evercraft:friends temp

# Calculate how many entries to skip: (page - 1) * 5
scoreboard players operation #fr_skip ec.temp = @s ec.fr_page
scoreboard players remove #fr_skip ec.temp 1
scoreboard players set #5 ec.const 5
scoreboard players operation #fr_skip ec.temp *= #5 ec.const

# Skip entries
function evercraft:codex/friends/skip_entries

# Display up to 5 entries (slot 0-4)
scoreboard players set #fr_slot ec.temp 0
function evercraft:codex/friends/display_loop

# Stamp session on ALL new friend GUI entities (entries + interactions)
execute as @e[tag=ec.fr_gui_el,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
execute as @e[tag=ec.fr_gui_entry,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
