# ============================================================
# Hearthstone GUI — Close
# Run as: player
# ============================================================

execute unless entity @s[tag=HS.InMenu] run return 0

# Kill all menu elements near the player
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=item_display,tag=HS.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=text_display,tag=HS.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=HS.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Re-enable the hearthstone interaction entity
execute at @s run data modify entity @e[type=interaction,tag=HS.Interact,distance=..7,limit=1] height set value 0.5f

# Remove tags
tag @s remove HS.InMenu
tag @s remove HS.InSettings
tag @s remove HS.InLaborers

# Sound
playsound minecraft:block.amethyst_block.chime master @s ~ ~ ~ 0.3 0.8
