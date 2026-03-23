# Friend Title — Loop: find friend entry and update title

execute unless data storage evercraft:friends temp.title_list[0] run return 0

execute store result score #fr_tl_uuid3 ec.temp run data get storage evercraft:friends temp.title_list[0].uuid3

# If match: copy entry, update title, append
execute if score #fr_tl_uuid3 ec.temp = #fr_title_find ec.temp run data modify storage evercraft:friends temp.title_entry set from storage evercraft:friends temp.title_list[0]
execute if score #fr_tl_uuid3 ec.temp = #fr_title_find ec.temp run data modify storage evercraft:friends temp.title_entry.title set from storage evercraft:friends temp.new_title
execute if score #fr_tl_uuid3 ec.temp = #fr_title_find ec.temp run data modify storage evercraft:friends temp.title_result append from storage evercraft:friends temp.title_entry

# If no match: copy as-is
execute unless score #fr_tl_uuid3 ec.temp = #fr_title_find ec.temp run data modify storage evercraft:friends temp.title_result append from storage evercraft:friends temp.title_list[0]

# Pop and recurse
data remove storage evercraft:friends temp.title_list[0]
function evercraft:friends/title/set_loop
