# Codex GUI — Close
# Kills only THIS player's menu entities (session-isolated for multiplayer)

# Only proceed if in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Clean up guild menu state if it was open (must run before anchor kill)
execute if entity @s[tag=ec.guild_in_menu] run function evercraft:codex/guild/exit

# Clean up friends state if it was open
execute if entity @s[tag=ec.fr_detail_view] run function evercraft:codex/friends/exit

# Clean up showcase state if it was open
execute if entity @s[tag=ec.sc_in_showcase] run function evercraft:codex/friends/showcase/exit

# Find our anchor (session-matched), then kill all menu entities near it
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.MenuElement,distance=..5]

# Remove player tags and reset state
tag @s remove Adv.InMenu
tag @s remove Adv.RespecMode
tag @s remove ec.wishing_star_active
tag @s remove ec.lucid_claim_active
scoreboard players set @s adv.gui_cd 0
scoreboard players set @s adv.gui_page 0
scoreboard players set @s adv.gui_section 0

# Play close sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 0.8
