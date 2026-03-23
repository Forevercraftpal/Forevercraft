# Glyphforge GUI — Close

# Kill all GUI entities
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=RF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=RF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=RF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Remove player tags
tag @s remove RF.InMenu

# Reset player-side scores (state persists on marker)
scoreboard players set @s rf.rune_id 0
scoreboard players set @s rf.state 0

# Sound
playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.2 1.8
