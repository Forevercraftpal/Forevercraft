# Infinite Castle — Tally Crate Coins
# Run as: player leaving the castle run
# Converts accumulated crate coins into random-tier crates

# Skip if no coins
execute if score @s ic.coins matches ..0 run return 0

# Announce total
execute store result storage evercraft:castle tally.coins int 1 run scoreboard players get @s ic.coins
function evercraft:castle/tally_announce with storage evercraft:castle tally

# Init tier counters
scoreboard players set #ic_t_common ec.var 0
scoreboard players set #ic_t_uncommon ec.var 0
scoreboard players set #ic_t_rare ec.var 0
scoreboard players set #ic_t_ornate ec.var 0
scoreboard players set #ic_t_exquisite ec.var 0
scoreboard players set #ic_t_mythical ec.var 0
scoreboard players set #ic_drop_warned ec.var 0

# Roll all crates (recursive, no per-crate tellraw)
function evercraft:castle/tally_roll

# Announce summary (only tiers that had at least 1)
execute if score #ic_t_common ec.var matches 1.. store result storage evercraft:castle tally.count int 1 run scoreboard players get #ic_t_common ec.var
execute if score #ic_t_common ec.var matches 1.. run function evercraft:castle/tally_summary {tier:"Common",color:"white"}

execute if score #ic_t_uncommon ec.var matches 1.. store result storage evercraft:castle tally.count int 1 run scoreboard players get #ic_t_uncommon ec.var
execute if score #ic_t_uncommon ec.var matches 1.. run function evercraft:castle/tally_summary {tier:"Uncommon",color:"blue"}

execute if score #ic_t_rare ec.var matches 1.. store result storage evercraft:castle tally.count int 1 run scoreboard players get #ic_t_rare ec.var
execute if score #ic_t_rare ec.var matches 1.. run function evercraft:castle/tally_summary {tier:"Rare",color:"aqua"}

execute if score #ic_t_ornate ec.var matches 1.. store result storage evercraft:castle tally.count int 1 run scoreboard players get #ic_t_ornate ec.var
execute if score #ic_t_ornate ec.var matches 1.. run function evercraft:castle/tally_summary {tier:"Ornate",color:"dark_purple"}

execute if score #ic_t_exquisite ec.var matches 1.. store result storage evercraft:castle tally.count int 1 run scoreboard players get #ic_t_exquisite ec.var
execute if score #ic_t_exquisite ec.var matches 1.. run function evercraft:castle/tally_summary {tier:"Exquisite",color:"light_purple"}

execute if score #ic_t_mythical ec.var matches 1.. store result storage evercraft:castle tally.count int 1 run scoreboard players get #ic_t_mythical ec.var
execute if score #ic_t_mythical ec.var matches 1.. run function evercraft:castle/tally_summary {tier:"Mythical",color:"gold"}
