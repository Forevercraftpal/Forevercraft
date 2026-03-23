# Lore — Enter Set Detail View (Macro)
# Macro arg: slot (0-4, index into gui_slot_sets array)
# Run as the player, at player, facing the anchor

# Get set_id from the slot mapping
$execute store result score @s adv.gui_lore_set run data get storage evercraft:lore gui_slot_sets[$(slot)]

# Validate: if set_id is 0, this slot was empty — do nothing
execute if score @s adv.gui_lore_set matches ..0 run return 0

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill set list content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.LoreSetList,distance=..5]

# Switch to detail page
scoreboard players set @s adv.gui_page 4

# Load set metadata for display
execute store result storage evercraft:lore temp.fill_set_id int 1 run scoreboard players get @s adv.gui_lore_set
function evercraft:codex/hub/lore/spawn_set_detail with storage evercraft:lore temp

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
