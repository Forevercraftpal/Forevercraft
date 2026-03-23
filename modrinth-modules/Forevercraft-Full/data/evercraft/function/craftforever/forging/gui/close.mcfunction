# Artisan Forge GUI — Close

# Kill all session-matched GUI entities
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=CF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=CF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=CF.MenuEl,distance=..7] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Remove player tags
tag @s remove CF.InMenu
tag @s remove CF.Forging

# Reset state
scoreboard players set @s ec.cf_state 0
scoreboard players set @s ec.cf_phase 0
scoreboard players set @s ec.cf_mat_tier -1
scoreboard players set @s ec.cf_cat_tier -1
scoreboard players set @s ec.cf_recipe 0

playsound minecraft:block.anvil.land master @s ~ ~ ~ 0.2 1.8
