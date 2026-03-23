# Tomb System — Spawn Grave Entities at Current Position
# @s = dying player, positioned at (possibly clamped) grave location
# Called from spawn_grave.mcfunction

# Store grave ID and sword to temp storage for macro
execute store result storage evercraft:tomb_temp grave_id int 1 run scoreboard players get @s ec.tomb_id
execute store result storage evercraft:tomb_temp sword_tier int 1 run scoreboard players get @s ec.tomb_sword

# Store death gametime for timer calculation
# MUST be int, not long — macro interpolation adds 'L' suffix for longs which breaks commands
execute store result storage evercraft:tomb_temp death_gametime int 1 run time query gametime

# Store dimension for reference
data modify storage evercraft:tomb_temp dim set value "minecraft:overworld"
execute if dimension minecraft:the_nether run data modify storage evercraft:tomb_temp dim set value "minecraft:the_nether"
execute if dimension minecraft:the_end run data modify storage evercraft:tomb_temp dim set value "minecraft:the_end"

# Detect block beneath death position for grave base texture
# data get block can't read block ID — must use execute if block checks
# Default to andesite, then override with the actual ground block
data modify storage evercraft:tomb_temp ground_block set value "minecraft:andesite"
execute align xyz run function evercraft:tomb/detect_ground_block

# Spawn all grave entities via macro
function evercraft:tomb/spawn_entities with storage evercraft:tomb_temp
