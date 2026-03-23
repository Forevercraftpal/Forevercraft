# Codex Friends — Display loop: spawn up to 5 friend entries
# #fr_slot ec.temp = current slot (0-4)

execute if score #fr_slot ec.temp matches 5.. run return 0
execute unless data storage evercraft:friends temp.page_list[0] run return 0

# Read current entry data
execute store result score #fr_entry_uuid3 ec.temp run data get storage evercraft:friends temp.page_list[0].uuid3
execute store result score #fr_entry_cid ec.temp run data get storage evercraft:friends temp.page_list[0].cid
execute store result score #fr_entry_hearts ec.temp run data get storage evercraft:friends temp.page_list[0].hearts

# Store to dedicated entry compound for macro (avoids temp containing arrays/compounds)
execute store result storage evercraft:friends entry.entry_cid int 1 run scoreboard players get #fr_entry_cid ec.temp
execute store result storage evercraft:friends entry.entry_hearts int 1 run scoreboard players get #fr_entry_hearts ec.temp
execute store result storage evercraft:friends entry.entry_uuid3 int 1 run scoreboard players get #fr_entry_uuid3 ec.temp
data modify storage evercraft:friends entry.entry_title set from storage evercraft:friends temp.page_list[0].title

# Determine friendship level color
data modify storage evercraft:friends entry.level_color set value "gray"
data modify storage evercraft:friends entry.level_name set value "Friend"
execute if score #fr_entry_hearts ec.temp matches 7.. run data modify storage evercraft:friends entry.level_color set value "green"
execute if score #fr_entry_hearts ec.temp matches 7.. run data modify storage evercraft:friends entry.level_name set value "Good Friend"
execute if score #fr_entry_hearts ec.temp matches 30.. run data modify storage evercraft:friends entry.level_color set value "aqua"
execute if score #fr_entry_hearts ec.temp matches 30.. run data modify storage evercraft:friends entry.level_name set value "Great Friend"
execute if score #fr_entry_hearts ec.temp matches 60.. run data modify storage evercraft:friends entry.level_color set value "light_purple"
execute if score #fr_entry_hearts ec.temp matches 60.. run data modify storage evercraft:friends entry.level_name set value "Ultra Friend"
execute if score #fr_entry_hearts ec.temp matches 90.. run data modify storage evercraft:friends entry.level_color set value "gold"
execute if score #fr_entry_hearts ec.temp matches 90.. run data modify storage evercraft:friends entry.level_name set value "Best Friend"

# Determine Y position based on slot (0=top, 4=bottom)
# Y positions: 2.38, 2.16, 1.94, 1.72, 1.50
# Store Y in entry compound and call inner with dedicated entry namespace (no arrays/compounds)
execute if score #fr_slot ec.temp matches 0 run data modify storage evercraft:friends entry.entry_y set value 2.38
execute if score #fr_slot ec.temp matches 1 run data modify storage evercraft:friends entry.entry_y set value 2.16
execute if score #fr_slot ec.temp matches 2 run data modify storage evercraft:friends entry.entry_y set value 1.94
execute if score #fr_slot ec.temp matches 3 run data modify storage evercraft:friends entry.entry_y set value 1.72
execute if score #fr_slot ec.temp matches 4 run data modify storage evercraft:friends entry.entry_y set value 1.50
function evercraft:codex/friends/spawn_entry_inner with storage evercraft:friends entry

# Pop entry and continue
data remove storage evercraft:friends temp.page_list[0]
scoreboard players add #fr_slot ec.temp 1
function evercraft:codex/friends/display_loop
