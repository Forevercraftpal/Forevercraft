# Codex Hub — Unified Tick
# Called every tick for players with menu open (any section)
# Handles: distance check, hold check, click routing by section

# Only run for players in menu
execute unless entity @s[tag=Adv.InMenu] run return 0

# Store session for entity ownership filtering (used by all check_clicks)
scoreboard players operation #gui_owner ec.temp = @s adv.gui_session

# Close if player stops holding codex (artifact/eternal/phoenix/craftforever codex)
# craftforever_codex accepted for CF→FC bridge (shared pages open in FC hub shell)
# (Item-triggered menu: no distance/timer auto-close needed — item switch handles it)
execute unless entity @s[tag=ec.wishing_star_active] unless entity @s[tag=ec.lucid_claim_active] unless items entity @s weapon.mainhand book[custom_data~{artifact_codex:true}] unless items entity @s weapon.offhand book[custom_data~{artifact_codex:true}] unless items entity @s weapon.mainhand book[custom_data~{eternal_codex:true}] unless items entity @s weapon.offhand book[custom_data~{eternal_codex:true}] unless items entity @s weapon.mainhand book[custom_data~{phoenix_codex:true}] unless items entity @s weapon.offhand book[custom_data~{phoenix_codex:true}] unless items entity @s weapon.mainhand *[custom_data~{craftforever_codex:true}] unless items entity @s weapon.offhand *[custom_data~{craftforever_codex:true}] run return run function evercraft:advantage/gui/close

# Click cooldown — skip all click checks for 3 ticks after hub (re)opens
# Score-based: absorbs held right-clicks that would otherwise trigger newly spawned interaction entities
# Each tick: flush stale interaction data, decrement counter, return while active
execute if score @s adv.gui_cd matches 1.. as @e[type=interaction,tag=Adv.MenuElement,distance=..5] if data entity @s interaction run data remove entity @s interaction
execute if score @s adv.gui_cd matches 1.. run return run scoreboard players remove @s adv.gui_cd 1

# Back button check (universal — works in any section, session-filtered)
execute if score @s adv.gui_section matches 1.. as @e[type=interaction,tag=Adv.BackBtnClick,distance=..5] if score @s adv.gui_session = #gui_owner ec.temp if data entity @s interaction run function evercraft:codex/hub/back_to_hub_click

# Second cooldown gate — catches same-tick back_to_hub which sets cooldown after the first check
execute if score @s adv.gui_cd matches 1.. as @e[type=interaction,tag=Adv.MenuElement,distance=..5] if data entity @s interaction run data remove entity @s interaction
execute if score @s adv.gui_cd matches 1.. run return run scoreboard players remove @s adv.gui_cd 1

# Route clicks based on active section
execute if score @s adv.gui_section matches 0 run function evercraft:codex/hub/check_clicks_hub
execute if score @s adv.gui_section matches 1 run function evercraft:advantage/gui/check_clicks
execute if score @s adv.gui_section matches 2 run function evercraft:codex/hub/challenges/check_clicks
execute if score @s adv.gui_section matches 3 run function evercraft:codex/hub/cosmetics/check_clicks
execute if score @s adv.gui_section matches 4 run function evercraft:codex/hub/artifacts/check_clicks
execute if score @s adv.gui_section matches 5 run function evercraft:codex/hub/journal/check_clicks
execute if score @s adv.gui_section matches 6 run function evercraft:codex/hub/lore/check_clicks
execute if score @s adv.gui_section matches 7 run function evercraft:party/gui/check_clicks
execute if score @s adv.gui_section matches 8 run function evercraft:codex/hub/milestones/check_clicks
execute if score @s adv.gui_section matches 9 run function evercraft:codex/hub/help/check_clicks
execute if score @s adv.gui_section matches 10 run function evercraft:gacha/spark/gui/check_clicks
# Auto-recovery: if section 11 but guild menu not active, navigate back to hub
execute if score @s adv.gui_section matches 11 unless entity @s[tag=ec.guild_in_menu] at @s facing entity @e[type=marker,tag=Adv.MenuAnchor,distance=..5,limit=1,sort=nearest] feet run function evercraft:codex/hub/back_to_hub
execute if score @s adv.gui_section matches 11 run scoreboard players set @s ec.guild_menu_time 0
execute if score @s adv.gui_section matches 11 run function evercraft:guild/gui/menu/tick
execute if score @s adv.gui_section matches 12 run function evercraft:codex/friends/check_clicks

execute if score @s adv.gui_section matches 19 run function evercraft:codex/hub/bestiary/check_clicks
execute if score @s adv.gui_section matches 20 run function evercraft:codex/hub/classes/check_clicks

# Eternal Codex claim sections (13-18)
execute if score @s adv.gui_section matches 13 run function evercraft:ecodex/sections/bestiary_claims/check_clicks
# Section 14 (Class Affinity) removed — already covered by Classes page (section 20)
execute if score @s adv.gui_section matches 15 run function evercraft:ecodex/sections/lore_claims/check_clicks
execute if score @s adv.gui_section matches 16 run function evercraft:ecodex/sections/biome_claims/check_clicks
execute if score @s adv.gui_section matches 17 run function evercraft:ecodex/sections/personal_claims/check_clicks
execute if score @s adv.gui_section matches 18 run function evercraft:ecodex/sections/craftforever_claims/check_clicks

# Stamp any newly spawned entities with our session via anchor proximity
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s as @e[tag=Adv.MenuElement,distance=..5] unless score @s adv.gui_session matches 1.. run scoreboard players operation @s adv.gui_session = #gui_stamp ec.temp
