# Artifact Collection — Back to Tier Picker
# From category picker (page 2) → tier picker (page 1)
# Run as the player, at player, facing anchor

# Reset page
scoreboard players set @s adv.gui_page 1

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill category picker / constellation display + sub-nav
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtCats,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtConst,distance=..5]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtSubNav,distance=..5]

# Restore section title
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Artifact Collection \u2726",color:"light_purple",bold:true}

# Respawn tier picker
function evercraft:codex/hub/artifacts/spawn_tiers

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
