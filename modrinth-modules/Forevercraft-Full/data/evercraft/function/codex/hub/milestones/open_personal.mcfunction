# Milestones — Open Personal Milestones
# Run as the player, at the player, facing the anchor (set by enter_personal)

# Kill overview content
scoreboard players operation #gui_stamp ec.temp = @s adv.gui_session
execute as @e[type=marker,tag=Adv.MenuAnchor,distance=..5] if score @s adv.gui_session = #gui_stamp ec.temp at @s run kill @e[tag=Adv.MsOverview,distance=..5]

# Set page 20 (personal milestones)
scoreboard players set @s adv.gui_page 20

# Spawn back-to-overview button (below pagination row)
execute rotated ~ 0 positioned ^ ^1.03 ^2.28 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.MenuElement","Adv.SectionContent"],billboard:"center",text:{text:"\u2190 Milestones",color:"yellow"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}
execute rotated ~ 0 positioned ^ ^1.00 ^2.3 run summon interaction ~ ~ ~ {Tags:["Adv.MenuElement","Adv.SectionContent","Adv.MsBackToOvClick"],width:0.6f,height:0.05f,response:1b}

# Spawn personal claims content
function evercraft:ecodex/sections/personal_claims

playsound minecraft:ui.button.click master @s ~ ~ ~ 0.5 1.2
