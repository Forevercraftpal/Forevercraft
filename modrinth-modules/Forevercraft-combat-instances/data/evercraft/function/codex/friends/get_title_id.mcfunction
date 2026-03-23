# Codex Friends — Map title string to ID
# Reads temp.detail_title, sets #fr_cur_title ec.temp

execute if data storage evercraft:friends {temp:{detail_title:"friend"}} run scoreboard players set #fr_cur_title ec.temp 0
execute if data storage evercraft:friends {temp:{detail_title:"brother"}} run scoreboard players set #fr_cur_title ec.temp 1
execute if data storage evercraft:friends {temp:{detail_title:"sister"}} run scoreboard players set #fr_cur_title ec.temp 2
execute if data storage evercraft:friends {temp:{detail_title:"mother"}} run scoreboard players set #fr_cur_title ec.temp 3
execute if data storage evercraft:friends {temp:{detail_title:"father"}} run scoreboard players set #fr_cur_title ec.temp 4
execute if data storage evercraft:friends {temp:{detail_title:"grandmother"}} run scoreboard players set #fr_cur_title ec.temp 5
execute if data storage evercraft:friends {temp:{detail_title:"grandfather"}} run scoreboard players set #fr_cur_title ec.temp 6
execute if data storage evercraft:friends {temp:{detail_title:"cousin"}} run scoreboard players set #fr_cur_title ec.temp 7
execute if data storage evercraft:friends {temp:{detail_title:"uncle"}} run scoreboard players set #fr_cur_title ec.temp 8
execute if data storage evercraft:friends {temp:{detail_title:"aunt"}} run scoreboard players set #fr_cur_title ec.temp 9
execute if data storage evercraft:friends {temp:{detail_title:"spouse"}} run scoreboard players set #fr_cur_title ec.temp 10
