# Craftforever Codex — Global orphan cleanup (disconnect recovery fallback)
# Called when close couldn't find the anchor (player respawned far away)
# close already removed CF.InCodex and reset state — this just kills leftover entities

scoreboard players operation #cf_gui_stamp ec.temp = @s ec.cf_gui_session
execute as @e[type=marker,tag=CF.MenuAnchor] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp at @s run kill @e[tag=CF.MenuElement,distance=..5]
execute as @e[type=marker,tag=CF.MenuAnchor] if score @s ec.cf_gui_session = #cf_gui_stamp ec.temp run kill @s

# Ensure state is clean (close already did this, but safety net)
tag @s remove CF.InCodex
scoreboard players set @s ec.cf_codex_cd 0
scoreboard players set @s ec.cf_codex_page 0
scoreboard players set @s ec.cf_codex_section 0
