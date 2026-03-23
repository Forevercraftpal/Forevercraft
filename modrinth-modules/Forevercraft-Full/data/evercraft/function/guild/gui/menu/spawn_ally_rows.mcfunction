# Guild Menu — Spawn ally rows (recursive iterator)
# Iterates temp.allies_list[], spawns up to 4 rows
# #ally_row ec.temp = current row index (0-3)

# Stop if row >= 4 (pagination later) or no more entries
execute if score #ally_row ec.temp matches 4.. run return 0
execute unless data storage evercraft:guild temp.allies_list[0] run return 0

# Pop first entry: copy id to temp, remove from list
execute store result score #ally_id ec.temp run data get storage evercraft:guild temp.allies_list[0].id
data remove storage evercraft:guild temp.allies_list[0]

# Look up ally guild name from marker
scoreboard players operation #Search ec.guild_id = #ally_id ec.temp
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] run data modify storage evercraft:guild temp.ally_name set from entity @s data.name

# Store ally id for macro
execute store result storage evercraft:guild temp.ally_id int 1 run scoreboard players get #ally_id ec.temp
execute store result storage evercraft:guild temp.ally_row int 1 run scoreboard players get #ally_row ec.temp

# Spawn the row
function evercraft:guild/gui/menu/spawn_ally_row with storage evercraft:guild temp

# Next row
scoreboard players add #ally_row ec.temp 1
function evercraft:guild/gui/menu/spawn_ally_rows
