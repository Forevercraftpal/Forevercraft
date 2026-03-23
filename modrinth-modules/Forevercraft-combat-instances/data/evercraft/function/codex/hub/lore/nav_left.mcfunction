# Lore — Navigate to Previous Page
# Run as the player

# Don't go below page 1
execute if score @s adv.gui_lore_pg matches ..1 run return 0

scoreboard players remove @s adv.gui_lore_pg 1

# Re-resolve pool and refresh
execute store result storage evercraft:lore temp.gui_dim int 1 run scoreboard players get @s adv.gui_lore_dim
execute store result storage evercraft:lore temp.gui_subcat int 1 run scoreboard players get @s adv.gui_lore_subcat
function evercraft:codex/hub/lore/resolve_set_pool with storage evercraft:lore temp
function evercraft:codex/hub/lore/refresh_set_list

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
