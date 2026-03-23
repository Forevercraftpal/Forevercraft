# ============================================================
# Guild System — Create Guild from Signed Charter
# @s = player holding signed guild charter
# Charter = written_book with custom_data:{guild_charter:1b}
# Name extracted from written_book_content.pages[0]
# Flow: player placed guild stone → got charter → wrote name → signed → right-clicked
# ============================================================

# Validate: not already in a guild
execute if score @s ec.guild_id matches 1.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You are already in a guild! Leave first.",color:"red"}]
execute if score @s ec.guild_id matches 1.. run return run function evercraft:guild/create_fail

# Validate: has 64 emeralds (use clear count check — NBT match requires single full stack)
execute store result score #guild_emeralds ec.temp run clear @s minecraft:emerald 0
execute unless score #guild_emeralds ec.temp matches 64.. run tellraw @s [{text:"[Guild] ",color:"green"},{text:"You need 64 emeralds to found a guild!",color:"red"}]
execute unless score #guild_emeralds ec.temp matches 64.. run return run function evercraft:guild/create_fail

# Remove 64 emeralds
clear @s minecraft:emerald 64

# Extract guild name from held charter's first page
data modify storage evercraft:guild temp.name set from entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw

# Allocate guild ID
execute store result score @s ec.guild_id run data get storage evercraft:guild next_id
execute store result storage evercraft:guild temp.id int 1 run data get storage evercraft:guild next_id

# Increment next_id
execute store result storage evercraft:guild next_id int 1 run scoreboard players add #guild_next_id ec.temp 1
scoreboard players operation #guild_next_id ec.temp = @s ec.guild_id
scoreboard players add #guild_next_id ec.temp 1
execute store result storage evercraft:guild next_id int 1 run scoreboard players get #guild_next_id ec.temp

# Set player as Valorous (rank 7), 0 contribution
scoreboard players set @s ec.guild_rank 7
scoreboard players set @s ec.guild_contrib 0
scoreboard players set @s ec.ge_weekly_contrib 0

# Store creator UUID3 for ownership
execute store result storage evercraft:guild temp.creator_uuid3 int 1 run scoreboard players get @s companion.id

# Store current day
execute store result storage evercraft:guild temp.created_day int 1 run time query day

# Summon guild marker entity at forceloaded chunk
function evercraft:guild/create_marker with storage evercraft:guild temp

# Initialize member list in storage
function evercraft:guild/create_storage with storage evercraft:guild temp

# Consume the charter
clear @s minecraft:written_book[custom_data~{guild_charter:1b}] 1

# === Register the placed guild stone ===
# Find the pending guildstone marker (matched by placer's UUID3)
execute store result score #gs_placer ec.temp run scoreboard players get @s companion.id
execute as @e[type=marker,tag=ec.guildstone,tag=ec.gs_pending] if score @s ec.gs_placer = #gs_placer ec.temp run function evercraft:guild/stone/finalize_placement

# Announce creation
function evercraft:guild/announce_create with storage evercraft:guild temp

# Consume charter first, THEN revoke — prevents double-fire
# (revoking while charter exists lets inventory_changed re-grant immediately)
advancement revoke @s only evercraft:guild/use_charter
