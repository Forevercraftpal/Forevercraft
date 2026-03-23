# Guild Companion — Per-entity passive RP check
# Run as: GC.Head item_display entity
# Requires: #now gc.rp_timer = current gametime
# Grants +1 RP if 10 minutes (12000 ticks) have elapsed

# Initialize timer if not set
execute unless score @s gc.rp_timer matches 0.. run scoreboard players operation @s gc.rp_timer = #now gc.rp_timer

# Calculate elapsed time
scoreboard players operation #elapsed gc.rp_timer = #now gc.rp_timer
scoreboard players operation #elapsed gc.rp_timer -= @s gc.rp_timer

# Check if 10 minutes (12000 ticks) have passed
execute unless score #elapsed gc.rp_timer matches 12000.. run return fail

# Update timer to now
scoreboard players operation @s gc.rp_timer = #now gc.rp_timer

# Read current RP from entity NBT
data modify storage evercraft:companions math.string set string entity @s item.components."minecraft:profile".properties[{name:"relationship"}].value
scoreboard players set #value companion.calc 0
function evercraft:companions/handler/math/string_to_int

# Add 1 RP, cap at 5000
scoreboard players add #value companion.calc 1
execute if score #value companion.calc > #5000 companion.calc run return fail

# Save back to entity
function evercraft:companions/handler/math/int_to_string
data modify entity @s item.components."minecraft:profile".properties[{name:"relationship"}].value set from storage evercraft:companions math.string

# Sync to guild marker GuildPets[] storage
function evercraft:guild/pets/sync_rp
