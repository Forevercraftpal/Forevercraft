# Admin shortcut: Spawn The Deepcrawler
# Usage: /function evercraft:raids/admin/spawn_deepcrawler
execute if score #rd_active ec.var matches 1 run tellraw @s [{text:"[Raid Admin] ",color:"red"},{text:"A raid boss is already active!",color:"gray"}]
execute if score #rd_active ec.var matches 1 run return 0
function evercraft:raids/boss/deepcrawler/spawn
