# Codex Guild — Exit (cleanup when leaving section 11)
# Called from back_to_hub before hub respawns
# Run as the player

tag @s remove ec.guild_in_menu
tag @s remove ec.guild_supply_select
tag @s remove ec.guild_remote_menu
scoreboard players set @s ec.guild_page 0
scoreboard players set @s ec.guild_warp_pg 0
scoreboard players set @s ec.guild_allies_pg 0

# Kill ALL guild menu entities via anchor (includes page content that lacks Adv.SectionContent)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..15] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=ec.guild_menu_el,distance=..5]
