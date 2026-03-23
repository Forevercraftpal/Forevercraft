# Lore — Navigate to Next Page
# Run as the player

# Re-resolve pool to get total pages
execute store result storage evercraft:lore temp.gui_dim int 1 run scoreboard players get @s adv.gui_lore_dim
execute store result storage evercraft:lore temp.gui_subcat int 1 run scoreboard players get @s adv.gui_lore_subcat
function evercraft:codex/hub/lore/resolve_set_pool with storage evercraft:lore temp

# Don't go past last page
execute if score @s adv.gui_lore_pg >= #lore_total_pages ec.temp run return 0

scoreboard players add @s adv.gui_lore_pg 1

# Refresh display
function evercraft:codex/hub/lore/refresh_set_list

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
