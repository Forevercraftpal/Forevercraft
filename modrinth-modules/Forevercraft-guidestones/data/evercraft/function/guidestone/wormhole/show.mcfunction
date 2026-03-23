# Guidestone Wormhole — Show the wormhole confirmation screen
# Run as the player with menu open, at their position
# Slot elements are already killed by switch_view before this is called

# Check if player has enough levels
execute unless score @s ec.gs_temp matches 30.. store result score @s ec.gs_temp run experience query @s levels

# Anchor all elements to the background entity so they stay centered
# Background is at Y=center of panel; text spawns at Y offsets from it
# Z offset -0.02 brings text slightly in front of the background panel

# Spawn description lines (no duplicate title — shared shell title already says "Wormhole")
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..8,limit=1] positioned ~ ~0.30 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:{text:"Tear a hole through space itself",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..8,limit=1] positioned ~ ~0.20 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:{text:"and emerge somewhere far, far away...",color:"gray",italic:true}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Cost display
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..8,limit=1] positioned ~ ~0.05 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:[{text:"Cost: ",color:"gray"},{text:"30 Levels",color:"green",bold:true}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# Warning
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..8,limit=1] positioned ~ ~-0.10 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:{text:"Before you go, are you sure",color:"gold"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..8,limit=1] positioned ~ ~-0.18 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el"], billboard:"center", text:{text:"you have a way back?",color:"gold"}, background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]} }

# "Yes, Warp Me!" button
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..8,limit=1] positioned ~ ~-0.35 ~-0.02 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f, Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_wh_yes_txt"], billboard:"center", text:[{text:"[ ",color:"dark_purple"},{text:"Yes, Warp Me!",color:"light_purple",bold:true},{text:" ]",color:"dark_purple"}], background:1, shadow:1b, transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]} }
execute at @e[type=item_display,tag=ec.gs_menu_bg,distance=..8,limit=1] positioned ~ ~-0.47 ~ run summon interaction ~ ~ ~ { Tags:["ec.gs_menu_el","ec.gs_slot_el","ec.gs_wh_confirm"], width:1.0f, height:0.12f, response:1b }

# Sound
playsound minecraft:block.portal.ambient master @s ~ ~ ~ 0.3 1.5
