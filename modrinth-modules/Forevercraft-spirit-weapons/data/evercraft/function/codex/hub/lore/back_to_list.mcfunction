# Lore — Back to Set List from Detail
# Run as the player, at player, facing the anchor

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill detail content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.LoreDetail,distance=..5]

# Return to set list page
scoreboard players set @s adv.gui_page 3

# Save current list page (spawn_set_list resets it to 1)
scoreboard players operation #lore_saved_pg ec.temp = @s adv.gui_lore_pg

# Spawn set list (this resolves its own pool and resets page to 1)
function evercraft:codex/hub/lore/spawn_set_list

# Restore the saved page (overrides the reset to 1)
scoreboard players operation @s adv.gui_lore_pg = #lore_saved_pg ec.temp

# Re-resolve pool and re-refresh with correct page
execute store result storage evercraft:lore temp.gui_dim int 1 run scoreboard players get @s adv.gui_lore_dim
execute store result storage evercraft:lore temp.gui_subcat int 1 run scoreboard players get @s adv.gui_lore_subcat
function evercraft:codex/hub/lore/resolve_set_pool with storage evercraft:lore temp
function evercraft:codex/hub/lore/refresh_set_list

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
