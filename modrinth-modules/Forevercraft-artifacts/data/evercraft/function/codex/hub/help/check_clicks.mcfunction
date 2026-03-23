# Codex Hub — Help Guide — Check Clicks
# Detects clicks on 20 topic buttons and routes to show_topic macro
# Run as the player (@s = player), #gui_owner ec.temp already set
# Pattern: same as enter_section — macro clears interaction + routes back to player

execute as @e[type=interaction,tag=Adv.HelpClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"dream_rate"}
execute as @e[type=interaction,tag=Adv.HelpClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"mining_crates"}
execute as @e[type=interaction,tag=Adv.HelpClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"harvesting"}
execute as @e[type=interaction,tag=Adv.HelpClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"fishing"}
execute as @e[type=interaction,tag=Adv.HelpClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"mobs_patrons"}
execute as @e[type=interaction,tag=Adv.HelpClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"artifacts"}
execute as @e[type=interaction,tag=Adv.HelpClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"mastery"}
execute as @e[type=interaction,tag=Adv.HelpClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"companions"}
execute as @e[type=interaction,tag=Adv.HelpClick9,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"quests_bounties"}
execute as @e[type=interaction,tag=Adv.HelpClick10,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"advantage_trees"}
execute as @e[type=interaction,tag=Adv.HelpClick11,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"classes"}
execute as @e[type=interaction,tag=Adv.HelpClick12,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"cooking"}
execute as @e[type=interaction,tag=Adv.HelpClick13,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"housing"}
execute as @e[type=interaction,tag=Adv.HelpClick14,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"dungeons_bosses"}
execute as @e[type=interaction,tag=Adv.HelpClick15,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"professions"}
execute as @e[type=interaction,tag=Adv.HelpClick16,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"world_travel"}
execute as @e[type=interaction,tag=Adv.HelpClick17,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"glyphforge_transmute"}
execute as @e[type=interaction,tag=Adv.HelpClick18,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"black_market"}
execute as @e[type=interaction,tag=Adv.HelpClick19,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"armor_trims"}
execute as @e[type=interaction,tag=Adv.HelpClick20,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"satchels_items"}

# Admin [*] button — opens command panel to chat (admin-gated)
execute as @e[type=interaction,tag=Adv.HelpClickAdmin,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/admin_commands

# Difficulty button — opens difficulty selection prompt
execute as @e[type=interaction,tag=Adv.HelpClickDiff,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:difficulty/help_click

# GUI cleanup button — prompts to clear floating GUI entities
execute as @e[type=interaction,tag=Adv.HelpClickGUI,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/gui_clear_prompt

# Class sub-menu category buttons (spawned by topics/classes.mcfunction)
execute as @e[type=interaction,tag=Adv.HelpClsMelee,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"classes_melee"}
execute as @e[type=interaction,tag=Adv.HelpClsRanged,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"classes_ranged"}
execute as @e[type=interaction,tag=Adv.HelpClsSupport,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/help/show_topic {topic:"classes_support"}
