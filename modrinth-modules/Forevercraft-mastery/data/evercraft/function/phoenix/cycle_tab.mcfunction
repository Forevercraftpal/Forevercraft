# === PHOENIX CODEX — CYCLE TAB ===
# Shift+use: advance tab 1 -> 2 -> 3 -> 4 -> 1
# Tab 1: Forevercraft Codex | Tab 2: Craftforever Codex | Tab 3: Companion Catalogue | Tab 4: Guidestone

# Close any open GUI before cycling
execute if entity @s[tag=Adv.InMenu] run function evercraft:advantage/gui/close
execute if entity @s[tag=CF.InCodex] run function evercraft:craftforever/codex/hub/close
execute if entity @s[tag=companion.inmenuv2] run function evercraft:companions/handler/menu_v2/close
execute if entity @s[tag=ec.gs_in_menu] run function evercraft:guidestone/menu/close

scoreboard players add @s ec.phoenix_tab 1
execute if score @s ec.phoenix_tab matches 5.. run scoreboard players set @s ec.phoenix_tab 1

# Show current tab name on actionbar
function evercraft:phoenix/show_tab_name

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.5
