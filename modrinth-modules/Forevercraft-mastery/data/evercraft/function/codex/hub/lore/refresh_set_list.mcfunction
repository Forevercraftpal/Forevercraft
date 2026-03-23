# Lore GUI — Refresh Set List (populate 5 slots from pool)
# Reads gui_pool, uses adv.gui_lore_pg for pagination
# Run as the player

# Initialize slot-to-set mapping array
data modify storage evercraft:lore gui_slot_sets set value [0, 0, 0, 0, 0]

# Calculate start index: (page - 1) * 5
scoreboard players operation #lore_start ec.temp = @s adv.gui_lore_pg
scoreboard players remove #lore_start ec.temp 1
scoreboard players operation #lore_start ec.temp *= #5 ec.const

# Get pool size
execute store result score #lore_pool_size ec.temp run data get storage evercraft:lore gui_pool

# Calculate total pages
scoreboard players operation #lore_total_pages ec.temp = #lore_pool_size ec.temp
scoreboard players add #lore_total_pages ec.temp 4
scoreboard players operation #lore_total_pages ec.temp /= #5 ec.const
execute if score #lore_total_pages ec.temp matches ..0 run scoreboard players set #lore_total_pages ec.temp 1

# Update page indicator text
execute store result storage evercraft:lore temp.gui_cur_page int 1 run scoreboard players get @s adv.gui_lore_pg
execute store result storage evercraft:lore temp.gui_total_pages int 1 run scoreboard players get #lore_total_pages ec.temp
function evercraft:codex/hub/lore/update_page_num with storage evercraft:lore temp

# Fill each of the 5 slots
# Slot 0
data modify storage evercraft:lore temp.slot set value 0
scoreboard players operation #lore_slot_idx ec.temp = #lore_start ec.temp
execute store result storage evercraft:lore temp.slot_idx int 1 run scoreboard players get #lore_slot_idx ec.temp
execute if score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/fill_slot with storage evercraft:lore temp
execute unless score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/hide_slot with storage evercraft:lore temp

# Slot 1
data modify storage evercraft:lore temp.slot set value 1
scoreboard players add #lore_slot_idx ec.temp 1
execute store result storage evercraft:lore temp.slot_idx int 1 run scoreboard players get #lore_slot_idx ec.temp
execute if score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/fill_slot with storage evercraft:lore temp
execute unless score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/hide_slot with storage evercraft:lore temp

# Slot 2
data modify storage evercraft:lore temp.slot set value 2
scoreboard players add #lore_slot_idx ec.temp 1
execute store result storage evercraft:lore temp.slot_idx int 1 run scoreboard players get #lore_slot_idx ec.temp
execute if score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/fill_slot with storage evercraft:lore temp
execute unless score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/hide_slot with storage evercraft:lore temp

# Slot 3
data modify storage evercraft:lore temp.slot set value 3
scoreboard players add #lore_slot_idx ec.temp 1
execute store result storage evercraft:lore temp.slot_idx int 1 run scoreboard players get #lore_slot_idx ec.temp
execute if score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/fill_slot with storage evercraft:lore temp
execute unless score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/hide_slot with storage evercraft:lore temp

# Slot 4
data modify storage evercraft:lore temp.slot set value 4
scoreboard players add #lore_slot_idx ec.temp 1
execute store result storage evercraft:lore temp.slot_idx int 1 run scoreboard players get #lore_slot_idx ec.temp
execute if score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/fill_slot with storage evercraft:lore temp
execute unless score #lore_slot_idx ec.temp < #lore_pool_size ec.temp run function evercraft:codex/hub/lore/hide_slot with storage evercraft:lore temp
