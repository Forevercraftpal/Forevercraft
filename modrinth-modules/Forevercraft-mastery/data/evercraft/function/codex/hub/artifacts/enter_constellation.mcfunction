# Artifact Collection — Enter Constellation (Macro)
# Macro arg: cn (1-10)
# Run as the player, at player, facing anchor

# Set category 6 (constellation view) and store constellation index in art_tier
scoreboard players set @s adv.gui_art_cat 6
$scoreboard players set @s adv.gui_art_tier $(cn)
scoreboard players set @s adv.gui_page 3

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill constellation display
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtConst,distance=..5]

# Kill old sub-nav ([← Tiers]) and respawn as [← Constellations]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtSubNav,distance=..5]
execute rotated ~ 0 positioned ^ ^1.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav"],billboard:"center",text:{text:"[\u2190 Constellations]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav","Adv.ArtSubNavClick"],width:0.6f,height:0.06f,response:1b}

# Update title per constellation
execute if score @s adv.gui_art_tier matches 1 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Tidewalker \u2726",color:"aqua",bold:true}
execute if score @s adv.gui_art_tier matches 2 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Pyreborn \u2726",color:"red",bold:true}
execute if score @s adv.gui_art_tier matches 3 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Verdant Crown \u2726",color:"green",bold:true}
execute if score @s adv.gui_art_tier matches 4 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Frozen Veil \u2726",color:"blue",bold:true}
execute if score @s adv.gui_art_tier matches 5 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Earthshaker \u2726",color:"yellow",bold:true}
execute if score @s adv.gui_art_tier matches 6 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Starweaver \u2726",color:"dark_purple",bold:true}
execute if score @s adv.gui_art_tier matches 7 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Shadow's Edge \u2726",color:"dark_gray",bold:true}
execute if score @s adv.gui_art_tier matches 8 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Dune Sovereign \u2726",color:"gold",bold:true}
execute if score @s adv.gui_art_tier matches 9 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Stormcaller \u2726",color:"dark_aqua",bold:true}
execute if score @s adv.gui_art_tier matches 10 as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run data modify entity @e[type=text_display,tag=Adv.MenuTitle,distance=..5,limit=1] text set value {text:"\u2726 Soulbinder \u2726",color:"dark_purple",bold:true}

# Dispatch to correct constellation item list
function evercraft:codex/hub/artifacts/dispatch_cn_items

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
