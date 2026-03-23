# Codex Friends — Spawn entry inner (macro)
# Macro args: entry_y, entry_cid, entry_hearts, entry_uuid3, level_color, level_name, entry_title

# Text display: [Name] ♥ hearts — Level (title)
# Name uses selector for online players, shows "Offline" if not found
$execute rotated ~ 0 positioned ^ ^$(entry_y) ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_entry"],billboard:"center",text:[{selector:"@a[scores={companion.id=$(entry_cid)},limit=1]",color:"white"},{text:" \u2764 ",color:"red"},{text:"$(entry_hearts)",color:"$(level_color)"},{text:" — ",color:"dark_gray"},{text:"$(level_name)",color:"$(level_color)"},{text:" ($(entry_title))",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.27f,0.27f,0.27f]}}

# Interaction for selecting this friend (stores uuid3 in ec.fr_target on click)
$execute rotated ~ 0 positioned ^ ^$(entry_y) ^2.3 positioned ^ ^-0.31 ^0 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_entry","ec.fr_gui_entry_click"],width:1.4f,height:0.09f,response:1b}

# Store the entry's uuid3 on the interaction entity for click identification
$execute as @e[type=interaction,tag=ec.fr_gui_entry_click,distance=..5,limit=1] unless score @s adv.gui_session matches 1.. run scoreboard players set @s ec.fr_target $(entry_uuid3)
