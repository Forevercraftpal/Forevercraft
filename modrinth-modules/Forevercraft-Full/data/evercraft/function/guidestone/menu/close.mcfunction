# Guidestone Menu — Close
# Run as the player

tag @s remove ec.gs_in_menu
tag @s remove ec.gs_wormhole_view
tag @s remove ec.gs_remote_menu
scoreboard players set @s ec.gs_page 0
scoreboard players set @s ec.gs_view 0

# Re-enable the guidestone interaction entity
execute at @s run data modify entity @e[type=interaction,tag=ec.gs_interact,distance=..5,limit=1] height set value 0.6f

# Kill all menu elements nearby (distance 8 matches open's orphan cleanup range)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.gs_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=ec.gs_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=ec.gs_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Revoke use_lodestone advancement so it can re-trigger on next right-click
advancement revoke @s only evercraft:guidestone/use_lodestone

# Clear menu context from storage
data remove storage evercraft:guidestone menu_ctx
data remove storage eden:temp pd_remote

playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 0.6 0.8
