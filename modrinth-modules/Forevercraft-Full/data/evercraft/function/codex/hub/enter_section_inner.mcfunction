# Codex Hub — Enter Section Inner (Macro)
# Macro arg: section (1-7)
# Run as the player, at player, facing the menu anchor

# Set section and reset page
$scoreboard players set @s adv.gui_section $(section)
scoreboard players set @s adv.gui_page 1

# Kill hub content AND any previous section content via anchor
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.HubContent,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.SectionContent,distance=..5]

# Spawn back button (shared across all sections)
function evercraft:codex/hub/spawn_back_button

# Update title per section (reads adv.gui_section scoreboard)
function evercraft:codex/hub/set_section_title

# Spawn section content
execute if score @s adv.gui_section matches 1 run function evercraft:advantage/gui/open
execute if score @s adv.gui_section matches 2 run function evercraft:codex/hub/challenges/spawn
execute if score @s adv.gui_section matches 3 run function evercraft:codex/hub/cosmetics/open
execute if score @s adv.gui_section matches 4 run function evercraft:codex/hub/artifacts/spawn_tiers
execute if score @s adv.gui_section matches 5 run function evercraft:codex/hub/journal/spawn_overview
execute if score @s adv.gui_section matches 6 run function evercraft:codex/hub/lore/spawn
execute if score @s adv.gui_section matches 7 run function evercraft:party/gui/open
execute if score @s adv.gui_section matches 8 run function evercraft:codex/hub/milestones/spawn
execute if score @s adv.gui_section matches 9 run function evercraft:codex/hub/help/spawn
execute if score @s adv.gui_section matches 11 run function evercraft:codex/guild/enter
execute if score @s adv.gui_section matches 12 run function evercraft:codex/friends/enter

# Classes (section 20)
execute if score @s adv.gui_section matches 20 run function evercraft:codex/hub/classes/spawn

# Bestiary (standalone section, extracted from Challenges)
execute if score @s adv.gui_section matches 19 run function evercraft:codex/hub/bestiary/spawn

# Eternal Codex claim tabs (sections 13-18)
execute if score @s adv.gui_section matches 13 run function evercraft:ecodex/sections/bestiary_claims
# Section 14 (Class Affinity) removed — already covered by Classes page (section 20)
execute if score @s adv.gui_section matches 15 run function evercraft:ecodex/sections/lore_claims
execute if score @s adv.gui_section matches 16 run function evercraft:ecodex/sections/biome_claims
execute if score @s adv.gui_section matches 17 run function evercraft:ecodex/sections/personal_claims
execute if score @s adv.gui_section matches 18 run function evercraft:ecodex/sections/craftforever_claims

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
