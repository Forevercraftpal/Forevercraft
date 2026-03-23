# Guild Stone — Auto-register for existing guild member
# Run as: player who placed guild stone, already has ec.guild_id
# Checks if guild already has a zone; if not, auto-registers this stone

# Check if guild already has a zone (stone already placed)
scoreboard players set #gz_has_zone ec.temp 0
scoreboard players operation #Search ec.guild_id = @s ec.guild_id
execute positioned 0 -61 0 as @e[type=marker,tag=ec.guild,distance=..2,predicate=evercraft:guild/check_id,limit=1] if data entity @s data.zone run scoreboard players set #gz_has_zone ec.temp 1

# Guild already has a stone placed — reject
execute if score #gz_has_zone ec.temp matches 1 run tellraw @s [{text:"[Guild] ",color:"green"},{text:"Your guild already has a Guild Stone placed. Break the old one first.",color:"red"}]
execute if score #gz_has_zone ec.temp matches 1 run return 0

# No zone yet — auto-finalize this stone as the guild's zone
# Find the pending marker we just spawned and finalize it
execute as @e[type=marker,tag=ec.guildstone,tag=ec.gs_pending,limit=1,sort=nearest,distance=..3] run function evercraft:guild/stone/finalize_placement

tellraw @s [{text:"[Guild] ",color:"green"},{text:"Guild Stone registered! ",color:"green"},{text:"Your guild zone is now active.",color:"gray"}]

# Sync zone data to all online guild members
function evercraft:guild/zone/sync
