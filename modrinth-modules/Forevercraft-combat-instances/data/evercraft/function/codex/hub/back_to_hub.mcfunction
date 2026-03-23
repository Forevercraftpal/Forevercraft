# Codex Hub — Back to Hub
# Kills all section content and returns to hub directory page
# Run as the player

# Find our anchor for proximity-based operations
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill all section content, page content, respec overlay via anchor
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.SectionContent,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.Page1,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.Page3,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.RespecOverlay,distance=..5]
tag @s remove Adv.RespecMode

# Clean up guild menu state if coming from section 11
execute if score @s adv.gui_section matches 11 run function evercraft:codex/guild/exit

# Clean up friends state if coming from section 12
execute if score @s adv.gui_section matches 12 run function evercraft:codex/friends/exit

# Eternal Codex sections (13-18): close menu entirely instead of returning to artifact codex hub
# (the artifact codex hub has no navigation to ecodex sections — going back would be confusing)
execute if score @s adv.gui_section matches 13..18 run return run function evercraft:advantage/gui/close

# CF→FC bridge: close FC hub and return to CF hub instead of FC hub
# Player came from CF codex via bridge — close FC, reopen CF
execute if entity @s[tag=ec.cf_bridge_active] run return run function evercraft:codex/hub/bridge_return_to_cf

# Reset to hub
scoreboard players set @s adv.gui_section 0
scoreboard players set @s adv.gui_page 1

# Update title back to hub via anchor
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 The Forevercraft Codex \u2726",color:"gold",bold:true}

# Respawn hub buttons
function evercraft:codex/hub/spawn_hub

# Click cooldown — 3-tick score prevents held right-click from triggering newly spawned interaction entities
scoreboard players set @s adv.gui_cd 3

# Play sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
