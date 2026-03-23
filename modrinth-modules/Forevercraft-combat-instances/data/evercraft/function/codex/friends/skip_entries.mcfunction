# Codex Friends — Skip entries for pagination
# Pops #fr_skip ec.temp entries from temp.page_list[0]

execute if score #fr_skip ec.temp matches ..0 run return 0
execute unless data storage evercraft:friends temp.page_list[0] run return 0

data remove storage evercraft:friends temp.page_list[0]
scoreboard players remove #fr_skip ec.temp 1
function evercraft:codex/friends/skip_entries
