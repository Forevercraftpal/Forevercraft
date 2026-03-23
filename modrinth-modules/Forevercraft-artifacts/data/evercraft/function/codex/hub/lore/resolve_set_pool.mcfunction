# Lore GUI — Resolve Set Pool (Macro)
# Copies the gui.{dim}_{subcat} pool to gui_pool and counts entries
# Macro args: gui_dim, gui_subcat

$data modify storage evercraft:lore gui_pool set from storage evercraft:lore gui.$(gui_dim)_$(gui_subcat)
execute store result score #lore_pool_size ec.temp run data get storage evercraft:lore gui_pool

# Calculate total pages (ceil(pool_size / 5))
scoreboard players operation #lore_total_pages ec.temp = #lore_pool_size ec.temp
scoreboard players add #lore_total_pages ec.temp 4
scoreboard players operation #lore_total_pages ec.temp /= #5 ec.const
execute if score #lore_total_pages ec.temp matches ..0 run scoreboard players set #lore_total_pages ec.temp 1
