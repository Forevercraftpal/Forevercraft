# Lore — Back to Sub-Category Picker
# Run as the player, at player, facing the anchor

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill set list content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.LoreSetList,distance=..5]

# If we came from Lore Pages (dim 3, subcat 4), go back to dimensions instead
execute if score @s adv.gui_lore_dim matches 3 run return run function evercraft:codex/hub/lore/back_to_dims

# Otherwise go to sub-category picker
scoreboard players set @s adv.gui_page 2
function evercraft:codex/hub/lore/spawn_subcats
