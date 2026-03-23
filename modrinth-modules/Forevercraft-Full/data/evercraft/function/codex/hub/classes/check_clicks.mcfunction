# Classes Section — Click Detection (Section 8)
# Run as the player with menu open

# === CLASS LIST CLICKS (page 1) ===

# Class name clicks → enter artifact list
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:1}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:2}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:3}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:4}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:5}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:6}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:7}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:8}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:9}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:10}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:11}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:12}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsClick13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/enter_class {class_id:13}

# [?] info clicks → show class description via tellraw
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:1}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:2}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:3}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:4}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:5}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:6}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:7}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:8}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:9}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:10}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:11}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:12}
execute if score @s adv.gui_page matches 1 as @e[type=interaction,tag=Adv.ClsInfo13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/classes/show_class_info {class_id:13}

# === ARTIFACT LIST CLICKS (page 2) ===
execute if score @s adv.gui_page matches 2 run function evercraft:codex/hub/classes/check_clicks_artifacts
