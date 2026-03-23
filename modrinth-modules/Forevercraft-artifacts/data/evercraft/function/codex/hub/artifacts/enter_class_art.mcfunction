# Artifact Collection — Enter Class Artifacts View (Macro)
# Macro arg: class_id (1-13)
# Run as the player, at player, facing anchor

# Store class ID (reuse existing scoreboard for dispatch_detail compatibility)
$scoreboard players set @s adv.gui_cls_id $(class_id)
scoreboard players set @s adv.gui_page 4

scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session

# Kill classes list content
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtItems,distance=..5]

# Update sub-nav to [← Classes]
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.ArtSubNav,distance=..5]
execute rotated ~ 0 positioned ^ ^1.19 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav"],billboard:"center",text:{text:"[\u2190 Classes]",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.378f,0.378f,0.378f]}}
execute rotated ~ 0 positioned ^ ^1.15 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.ArtSubNav","Adv.ArtSubNavClick"],width:0.5f,height:0.06f,response:1b}

# Spawn class artifacts using existing classes section files
execute if score @s adv.gui_cls_id matches 1 run function evercraft:codex/hub/classes/artifacts/rogue
execute if score @s adv.gui_cls_id matches 2 run function evercraft:codex/hub/classes/artifacts/berserker
execute if score @s adv.gui_cls_id matches 3 run function evercraft:codex/hub/classes/artifacts/dancer
execute if score @s adv.gui_cls_id matches 4..5 run function evercraft:codex/hub/classes/artifacts/striker
execute if score @s adv.gui_cls_id matches 6 run function evercraft:codex/hub/classes/artifacts/healer
execute if score @s adv.gui_cls_id matches 7 run function evercraft:codex/hub/classes/artifacts/beastlord
execute if score @s adv.gui_cls_id matches 8..9 run function evercraft:codex/hub/classes/artifacts/javelin
execute if score @s adv.gui_cls_id matches 10 run function evercraft:codex/hub/classes/artifacts/archer
execute if score @s adv.gui_cls_id matches 11 run function evercraft:codex/hub/classes/artifacts/hunter
execute if score @s adv.gui_cls_id matches 12..13 run function evercraft:codex/hub/classes/artifacts/tank

# Tag spawned ClsPage2 entities as ArtItems for cleanup
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run tag @e[tag=Adv.ClsPage2,distance=..5] add Adv.ArtItems

# Play click sound
playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.0
