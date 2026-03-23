# Pantry Menu — On Slot Click (macro)
# Args: local_slot (0-8, display position on current page)
# Calculates actual storage slot from page * 9 + local_slot

# Calculate actual slot index: page * 9 + local_slot
$scoreboard players set #pantry_local ec.temp $(local_slot)
scoreboard players operation #pantry_abs ec.temp = @s ec.pantry_page
scoreboard players set #pantry_9 ec.temp 9
scoreboard players operation #pantry_abs ec.temp *= #pantry_9 ec.temp
scoreboard players operation #pantry_abs ec.temp += #pantry_local ec.temp

# Store pid and absolute slot name to temp storage
execute store result storage evercraft:pantry temp.pid int 1 run scoreboard players get @s ec.pid

# Map absolute index (0-26) to slot name (s0-s26) via dispatch
function evercraft:pantry/menu/resolve_slot
