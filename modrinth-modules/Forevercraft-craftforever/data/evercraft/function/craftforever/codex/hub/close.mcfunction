# Craftforever Codex GUI — Close
# Kills only THIS player's menu entities (session-isolated)

execute unless entity @s[tag=CF.InCodex] run return 0

# Find our anchor (session-matched), then kill all menu entities near it
scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor,distance=..5] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.MenuElement,distance=..5]

# Remove player tags and reset state
tag @s remove CF.InCodex
scoreboard players set @s ec.cf_codex_cd 0
scoreboard players set @s ec.cf_codex_page 0
scoreboard players set @s ec.cf_codex_section 0

# Play close sound
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 0.5 0.8
