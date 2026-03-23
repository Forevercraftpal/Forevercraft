# Lore GUI — Fill Set List Slot (Macro)
# Reads set index from pool at slot_idx, fetches metadata, updates display
# Macro args from storage: slot (0-4), slot_idx (index into gui_pool)
# Run as the player

# Get set_id from pool at this index
$execute store result score #lore_fill_set ec.temp run data get storage evercraft:lore gui_pool[$(slot_idx)]
execute store result storage evercraft:lore temp.fill_set_id int 1 run scoreboard players get #lore_fill_set ec.temp

# Load set metadata and count collected pieces
function evercraft:codex/hub/lore/count_pieces with storage evercraft:lore temp

# Store the set_id for this slot (used by set_click)
$data modify storage evercraft:lore gui_slot_sets[$(slot)] set value 0
$execute store result storage evercraft:lore gui_slot_sets[$(slot)] int 1 run scoreboard players get #lore_fill_set ec.temp

# Prepare display values
data modify storage evercraft:lore temp.fill_name set from storage evercraft:lore fill_meta.name
execute store result storage evercraft:lore temp.fill_have int 1 run scoreboard players get #lore_fill_have ec.temp
execute store result storage evercraft:lore temp.fill_req int 1 run scoreboard players get #lore_fill_req ec.temp

# Set rarity color and label based on rarity score
execute if score #lore_fill_rar ec.temp matches 1 run data modify storage evercraft:lore temp.fill_rar_color set value "white"
execute if score #lore_fill_rar ec.temp matches 1 run data modify storage evercraft:lore temp.fill_rar_label set value "Common"
execute if score #lore_fill_rar ec.temp matches 2 run data modify storage evercraft:lore temp.fill_rar_color set value "green"
execute if score #lore_fill_rar ec.temp matches 2 run data modify storage evercraft:lore temp.fill_rar_label set value "Uncommon"
execute if score #lore_fill_rar ec.temp matches 3 run data modify storage evercraft:lore temp.fill_rar_color set value "aqua"
execute if score #lore_fill_rar ec.temp matches 3 run data modify storage evercraft:lore temp.fill_rar_label set value "Rare"
execute if score #lore_fill_rar ec.temp matches 4 run data modify storage evercraft:lore temp.fill_rar_color set value "light_purple"
execute if score #lore_fill_rar ec.temp matches 4 run data modify storage evercraft:lore temp.fill_rar_label set value "Ornate"
execute if score #lore_fill_rar ec.temp matches 5 run data modify storage evercraft:lore temp.fill_rar_color set value "gold"
execute if score #lore_fill_rar ec.temp matches 5 run data modify storage evercraft:lore temp.fill_rar_label set value "Exquisite"
execute if score #lore_fill_rar ec.temp matches 6 run data modify storage evercraft:lore temp.fill_rar_color set value "dark_purple"
execute if score #lore_fill_rar ec.temp matches 6 run data modify storage evercraft:lore temp.fill_rar_label set value "Mythical"

# Render the slot text displays
function evercraft:codex/hub/lore/render_slot with storage evercraft:lore temp

# Overwrite info line if complete
execute if score #lore_fill_have ec.temp >= #lore_fill_req ec.temp run function evercraft:codex/hub/lore/render_slot_complete with storage evercraft:lore temp
