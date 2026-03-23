# Artifact Collection — Switch Item List Page (Macro)
# Macro arg: operation (add/remove)
# Wraps between page 3 and (2 + max_pages)
# Run as the player, at player, facing anchor

# Adjust page
$scoreboard players $(operation) @s adv.gui_page 1

# Get max pages for this tier/category
function evercraft:codex/hub/artifacts/get_max_page
# adv.temp = max pages (1-3)
# Valid page range: 3 to (2 + adv.temp)
scoreboard players add @s adv.temp 2
# adv.temp now = max valid page number

# Wrap: if page < 3, set to max; if page > max, set to 3
scoreboard players operation #art_max adv.temp = @s adv.temp
execute if score @s adv.gui_page matches ..2 run scoreboard players operation @s adv.gui_page = #art_max adv.temp
execute if score @s adv.gui_page > #art_max adv.temp run scoreboard players set @s adv.gui_page 3

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill old items via anchor
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtItems,distance=..5]

# Dispatch new items
function evercraft:codex/hub/artifacts/dispatch_items

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
