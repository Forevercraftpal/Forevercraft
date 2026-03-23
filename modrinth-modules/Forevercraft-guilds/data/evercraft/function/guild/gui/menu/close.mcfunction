# Guild Menu — Close
# Run as the player

# If in codex remote mode, exit guild AND navigate back to codex hub
# Must check tag BEFORE calling exit_to_hub (exit removes the tag)
execute if entity @s[tag=ec.guild_remote_menu] at @s run return run function evercraft:codex/hub/back_to_hub

tag @s remove ec.guild_in_menu
tag @s remove ec.guild_supply_select
tag @s remove ec.gm_detail_view
scoreboard players set @s ec.guild_page 0
scoreboard players set @s ec.guild_warp_pg 0
scoreboard players set @s ec.guild_allies_pg 0

# Re-enable the guild stone interaction entity
execute at @s run data modify entity @e[type=interaction,tag=ec.guildstone_interact,distance=..5,limit=1] height set value 1.0f

# Kill all menu elements nearby (session-stamped shell elements)
scoreboard players operation #gui_check ec.temp = @s adv.gui_session
execute as @e[type=text_display,tag=ec.guild_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=interaction,tag=ec.guild_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s
execute as @e[type=item_display,tag=ec.guild_menu_el,distance=..5] if score @s adv.gui_session = #gui_check ec.temp run kill @s

# Kill page content that was spawned after open (not session-stamped)
execute at @s run kill @e[type=text_display,tag=ec.guild_page_el,distance=..5,scores={adv.gui_session=0}]
execute at @s run kill @e[type=interaction,tag=ec.guild_page_el,distance=..5,scores={adv.gui_session=0}]

playsound minecraft:block.amethyst_block.hit master @s ~ ~ ~ 0.6 0.8
