# Codex Friends — Show empty state
# Run as player, spawns centered message

execute rotated ~ 0 positioned ^ ^1.90 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.fr_gui_entry"],billboard:"center",text:[{text:"No friends yet!",color:"gray"},{text:"\n"},{text:"Shift+right-click a player",color:"dark_gray"},{text:"\n"},{text:"with the Codex to send",color:"dark_gray"},{text:"\n"},{text:"a friend request.",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}
