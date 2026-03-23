# Showcase — Spawn picker UI (inner, runs with corrected facing)
# Run as the player

# Header
execute rotated ~ 0 positioned ^ ^2.55 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el"],billboard:"center",text:{text:"Choose Achievement:",color:"yellow",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.338f,0.338f,0.338f]}}

# Count picks
execute store result score #sc_pick_count ec.temp run data get storage evercraft:showcase temp.picks

# Render pick entries (up to 5, spaced 0.20 apart)
# Entry 0 at Y=2.48
execute if score #sc_pick_count ec.temp matches 1.. run data modify storage evercraft:showcase temp.render_pick set from storage evercraft:showcase temp.picks[0]
execute if score #sc_pick_count ec.temp matches 1.. run data modify storage evercraft:showcase temp.render_pick.y_pos set value "2.33"
execute if score #sc_pick_count ec.temp matches 1.. run data modify storage evercraft:showcase temp.render_pick.pick_idx set value "0"
execute if score #sc_pick_count ec.temp matches 1.. run function evercraft:codex/friends/showcase/spawn_pick_entry with storage evercraft:showcase temp.render_pick

# Entry 1 at Y=2.28
execute if score #sc_pick_count ec.temp matches 2.. run data modify storage evercraft:showcase temp.render_pick set from storage evercraft:showcase temp.picks[1]
execute if score #sc_pick_count ec.temp matches 2.. run data modify storage evercraft:showcase temp.render_pick.y_pos set value "2.13"
execute if score #sc_pick_count ec.temp matches 2.. run data modify storage evercraft:showcase temp.render_pick.pick_idx set value "1"
execute if score #sc_pick_count ec.temp matches 2.. run function evercraft:codex/friends/showcase/spawn_pick_entry with storage evercraft:showcase temp.render_pick

# Entry 2 at Y=2.08
execute if score #sc_pick_count ec.temp matches 3.. run data modify storage evercraft:showcase temp.render_pick set from storage evercraft:showcase temp.picks[2]
execute if score #sc_pick_count ec.temp matches 3.. run data modify storage evercraft:showcase temp.render_pick.y_pos set value "1.93"
execute if score #sc_pick_count ec.temp matches 3.. run data modify storage evercraft:showcase temp.render_pick.pick_idx set value "2"
execute if score #sc_pick_count ec.temp matches 3.. run function evercraft:codex/friends/showcase/spawn_pick_entry with storage evercraft:showcase temp.render_pick

# Entry 3 at Y=1.88
execute if score #sc_pick_count ec.temp matches 4.. run data modify storage evercraft:showcase temp.render_pick set from storage evercraft:showcase temp.picks[3]
execute if score #sc_pick_count ec.temp matches 4.. run data modify storage evercraft:showcase temp.render_pick.y_pos set value "1.73"
execute if score #sc_pick_count ec.temp matches 4.. run data modify storage evercraft:showcase temp.render_pick.pick_idx set value "3"
execute if score #sc_pick_count ec.temp matches 4.. run function evercraft:codex/friends/showcase/spawn_pick_entry with storage evercraft:showcase temp.render_pick

# Entry 4 at Y=1.68
execute if score #sc_pick_count ec.temp matches 5.. run data modify storage evercraft:showcase temp.render_pick set from storage evercraft:showcase temp.picks[4]
execute if score #sc_pick_count ec.temp matches 5.. run data modify storage evercraft:showcase temp.render_pick.y_pos set value "1.53"
execute if score #sc_pick_count ec.temp matches 5.. run data modify storage evercraft:showcase temp.render_pick.pick_idx set value "4"
execute if score #sc_pick_count ec.temp matches 5.. run function evercraft:codex/friends/showcase/spawn_pick_entry with storage evercraft:showcase temp.render_pick

# [Reroll] button
execute rotated ~ 0 positioned ^0.30 ^1.31 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el","ec.sc_reroll_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Reroll",color:"green",bold:true},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^0.30 ^1.27 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el","ec.sc_reroll_btn"],width:0.25f,height:0.06f,response:1b}

# [Clear Slot] button (center)
execute rotated ~ 0 positioned ^ ^1.31 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el","ec.sc_clear_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Clear",color:"gray"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^ ^1.27 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el","ec.sc_clear_btn"],width:0.25f,height:0.06f,response:1b}

# [Cancel] button
execute rotated ~ 0 positioned ^-0.30 ^1.31 ^1.77 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el","ec.sc_cancel_txt"],billboard:"center",text:[{text:"[ ",color:"dark_gray"},{text:"Cancel",color:"red"},{text:" ]",color:"dark_gray"}],background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.20f,0.20f,0.20f]}}
execute rotated ~ 0 positioned ^-0.30 ^1.27 ^1.8 run summon interaction ~ ~ ~ {Tags:["Adv.SectionContent","Adv.MenuElement","ec.fr_gui_el","ec.sc_gui_el","ec.sc_picker_el","ec.sc_cancel_btn"],width:0.25f,height:0.06f,response:1b}
