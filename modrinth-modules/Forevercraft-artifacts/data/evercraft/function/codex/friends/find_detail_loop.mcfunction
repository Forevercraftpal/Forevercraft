# Codex Friends — Find friend detail loop
# Iterates detail_list to find entry matching #fr_clicked_uuid3
# Extracts: hearts, cid, title

execute unless data storage evercraft:friends temp.detail_list[0] run return 0

execute store result score #fr_check ec.temp run data get storage evercraft:friends temp.detail_list[0].uuid3
execute if score #fr_check ec.temp = #fr_clicked_uuid3 ec.temp run execute store result storage evercraft:friends temp.detail_hearts int 1 run data get storage evercraft:friends temp.detail_list[0].hearts
execute if score #fr_check ec.temp = #fr_clicked_uuid3 ec.temp run execute store result storage evercraft:friends temp.detail_cid int 1 run data get storage evercraft:friends temp.detail_list[0].cid
execute if score #fr_check ec.temp = #fr_clicked_uuid3 ec.temp run data modify storage evercraft:friends temp.detail_title set from storage evercraft:friends temp.detail_list[0].title
execute if score #fr_check ec.temp = #fr_clicked_uuid3 ec.temp run execute store result storage evercraft:friends temp.detail_gifts_no_return int 1 run data get storage evercraft:friends temp.detail_list[0].gifts_no_return
execute if score #fr_check ec.temp = #fr_clicked_uuid3 ec.temp run return 0

data remove storage evercraft:friends temp.detail_list[0]
function evercraft:codex/friends/find_detail_loop
