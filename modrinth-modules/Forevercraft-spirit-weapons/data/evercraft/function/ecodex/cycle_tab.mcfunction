# === ETERNAL CODEX — CYCLE TAB ===
# Shift+use: advance tab 1 -> 2 -> 3 -> 1
# Tab 1: Forevercraft Codex | Tab 2: Craftforever Codex | Tab 3: Companion Catalogue

# Close any open GUI before cycling
execute if entity @s[tag=Adv.InMenu] run function evercraft:advantage/gui/close
execute if entity @s[tag=CF.InCodex] run function evercraft:craftforever/codex/hub/close
execute if entity @s[tag=companion.inmenuv2] run function evercraft:companions/handler/menu_v2/close
execute if entity @s[tag=ec.gs_in_menu] run function evercraft:guidestone/menu/close

scoreboard players add @s ec.ecodex_tab 1
execute if score @s ec.ecodex_tab matches 4.. run scoreboard players set @s ec.ecodex_tab 1

# Show current tab name on actionbar
function evercraft:ecodex/show_tab_name

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.5
