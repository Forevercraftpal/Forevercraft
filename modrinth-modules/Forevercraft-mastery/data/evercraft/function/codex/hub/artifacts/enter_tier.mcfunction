# Artifact Collection — Enter Tier (Macro)
# Macro arg: tier (1-6)
# Run as the player, at player, facing anchor

# Set tier and page
$scoreboard players set @s adv.gui_art_tier $(tier)
scoreboard players set @s adv.gui_page 2

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill tier picker content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtTiers,distance=..5]

# Spawn [← Tiers] sub-nav button
execute rotated ~ 0 positioned ^ ^1.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav"],billboard:"center",text:{text:"[\u2190 Tiers]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav","Adv.ArtSubNavClick"],width:0.5f,height:0.06f,response:1b}

# Update title per tier
execute if score @s adv.gui_art_tier matches 1 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Common Artifacts \u2726",color:"white",bold:true}
execute if score @s adv.gui_art_tier matches 2 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Uncommon Artifacts \u2726",color:"dark_blue",bold:true}
execute if score @s adv.gui_art_tier matches 3 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Rare Artifacts \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_art_tier matches 4 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Ornate Artifacts \u2726",color:"dark_purple",bold:true}
execute if score @s adv.gui_art_tier matches 5 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Exquisite Artifacts \u2726",color:"light_purple",bold:true}
execute if score @s adv.gui_art_tier matches 6 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Mythical Artifacts \u2726",color:"gold",bold:true}

# Spawn category picker
function evercraft:codex/hub/artifacts/spawn_categories

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
