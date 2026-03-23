# Milestones — Back to Overview
# Kills detail content and respawns the overview
# Run as the player

# Kill all section content (detail pages use Adv.SectionContent tag)
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.SectionContent,distance=..5]

# Reset page to overview
scoreboard players set @s adv.gui_page 1

# Respawn overview + back button (inherit facing-anchor rotation from caller)
function evercraft:codex/hub/milestones/spawn
function evercraft:codex/hub/spawn_back_button

# Set cooldown to prevent accidental double-clicks
scoreboard players set @s adv.gui_cd 3

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
