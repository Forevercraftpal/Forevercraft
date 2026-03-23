# ============================================================
# Campfire Kitchen GUI — Close
# Runs as the player
# Kills all CK entities and removes menu tag
# ============================================================

# Remove menu and minigame tags
tag @s remove CK.InMenu
tag @s remove CK.Cooking
scoreboard players set @s ec.ck_phase 0

# Kill all menu entities within range
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CK.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CK.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=CK.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=marker,tag=CK.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
# Kill minigame entities too
execute as @e[type=text_display,tag=CK.MiniEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CK.MiniEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 0.8
