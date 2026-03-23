# Codex Hub — Check Clicks (Hub Page)
# Detects clicks on hub directory buttons
# Run as the player (@s = player)

# Advantage Trees (section 1)
execute as @e[type=interaction,tag=Adv.HubClick0,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:1}

# Challenges (section 2)
execute as @e[type=interaction,tag=Adv.HubClick1,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:2}

# Bestiary (section 19, was Cosmetics)
execute as @e[type=interaction,tag=Adv.HubClick2,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:19}

# Artifact Collection (section 4)
execute as @e[type=interaction,tag=Adv.HubClick3,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:4}

# Travel Journal (section 5)
execute as @e[type=interaction,tag=Adv.HubClick4,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:5}

# Party Bonds (section 7, moved up to row 2)
execute as @e[type=interaction,tag=Adv.HubClick5,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:7}

# Classes (section 20)
execute as @e[type=interaction,tag=Adv.HubClick6,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:20}

# Milestones (section 8)
execute as @e[type=interaction,tag=Adv.HubClick7,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:8}

# Help Guide (section 9)
execute as @e[type=interaction,tag=Adv.HubClickHelp,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:9}

# Fountain of Dreams (gives item, stays on hub)
execute as @e[type=interaction,tag=Adv.HubClick8,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:gacha/fountain/hub_click

# Title click — Realm Statistics overview (chat output, stays on hub)
execute as @e[type=interaction,tag=Adv.TitleClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/title_click

# Guild page (section 11) — left arrow, requires guild membership
# Reset before store — if no entity exists, store doesn't write, leaving stale value
scoreboard players set #guild_click ec.temp 0
execute store success score #guild_click ec.temp as @e[type=interaction,tag=Adv.HubNavLeftClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run data remove entity @s interaction
# Enter guild page if in a guild
execute if score #guild_click ec.temp matches 1 if score @s ec.guild_id matches 1.. as @e[type=interaction,tag=Adv.HubNavLeftClick,distance=..5,limit=1] if score @s adv.gui_session = #gui_owner ec.temp run function evercraft:codex/hub/enter_section {section:11}
# Warn non-guild players once per session (only on actual click)
execute if score #guild_click ec.temp matches 1 unless score @s ec.guild_id matches 1.. unless entity @s[tag=ec.guild_arrow_warned] run tellraw @s [{"text":"[Codex] ","color":"gold"},{"text":"Join a guild to access this page!","color":"gray"}]
execute if score #guild_click ec.temp matches 1 unless score @s ec.guild_id matches 1.. run tag @s add ec.guild_arrow_warned

# Friends page (section 12) — right arrow
execute as @e[type=interaction,tag=Adv.HubNavRightClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/enter_section {section:12}

# ===== CODEX UPGRADE & XP BANK CLICKS =====

# Combine with Tome of Experience
execute as @e[type=interaction,tag=Adv.HubClickCombTome,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/do_combine_tome

# Combine with Portal Dial
execute as @e[type=interaction,tag=Adv.HubClickCombDial,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/do_combine_dial

# XP Bank — Deposit
execute as @e[type=interaction,tag=Adv.HubClickXpDeposit,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/hub_xp_deposit

# XP Bank — Withdraw
execute as @e[type=interaction,tag=Adv.HubClickXpWithdraw,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:ecodex/hub_xp_withdraw
