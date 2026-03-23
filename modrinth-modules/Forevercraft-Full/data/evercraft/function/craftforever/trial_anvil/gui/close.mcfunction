# Trial Anvil GUI — Close

# Kill all GUI entities (session-isolated)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=TT.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=TT.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=TT.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Remove player tags
tag @s remove TT.InMenu

# Sound
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.2 1.8
