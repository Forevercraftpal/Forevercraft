# Friend Title — Revoke loop: rebuild titles_received without entry from setter
# #fr_tr_setter ec.temp = setter's UUID3

execute unless data storage evercraft:friends temp.tr_list[0] run return 0

execute store result score #fr_tr_from ec.temp run data get storage evercraft:friends temp.tr_list[0].from_uuid3

# Keep entries NOT from this setter
execute unless score #fr_tr_from ec.temp = #fr_tr_setter ec.temp run data modify storage evercraft:friends temp.tr_result append from storage evercraft:friends temp.tr_list[0]

# Also keep entries FROM this setter if the title has evolved (permanent unlock)
data modify storage evercraft:friends temp.tr_check_title set from storage evercraft:friends temp.tr_list[0].title
execute if score #fr_tr_from ec.temp = #fr_tr_setter ec.temp unless data storage evercraft:friends {temp:{tr_check_title:"friend"}} unless data storage evercraft:friends {temp:{tr_check_title:"brother"}} unless data storage evercraft:friends {temp:{tr_check_title:"sister"}} unless data storage evercraft:friends {temp:{tr_check_title:"mother"}} unless data storage evercraft:friends {temp:{tr_check_title:"father"}} unless data storage evercraft:friends {temp:{tr_check_title:"grandmother"}} unless data storage evercraft:friends {temp:{tr_check_title:"grandfather"}} unless data storage evercraft:friends {temp:{tr_check_title:"cousin"}} unless data storage evercraft:friends {temp:{tr_check_title:"uncle"}} unless data storage evercraft:friends {temp:{tr_check_title:"aunt"}} unless data storage evercraft:friends {temp:{tr_check_title:"spouse"}} run data modify storage evercraft:friends temp.tr_result append from storage evercraft:friends temp.tr_list[0]

# Pop and recurse
data remove storage evercraft:friends temp.tr_list[0]
function evercraft:friends/title/revoke_loop
