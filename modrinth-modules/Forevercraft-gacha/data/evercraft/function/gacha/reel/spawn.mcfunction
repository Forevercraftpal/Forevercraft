# Spawn the reel animation entities (7 item slots + background + 2 arrow markers)
# Runs as @s = player, at @s, rotated ~ 0 (player-relative, pitch locked)

# Background panel (wide, short strip behind the reel)
execute positioned ^ ^2.45 ^1.8 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement"],billboard:"center",item:{id:"black_stained_glass_pane",count:1},item_display:"fixed",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.6f,0.8f,0.01f]}}

# Top arrow marker (▼ pointing at center slot)
execute positioned ^ ^2.8 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ReelElement"],billboard:"center",text:{text:"\u25BC",color:"gold",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.01f],scale:[0.81f,0.81f,0.81f]}}

# Bottom arrow marker (▲ pointing at center slot)
execute positioned ^ ^2.1 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ReelElement"],billboard:"center",text:{text:"\u25B2",color:"gold",bold:true},background:0,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0.01f],scale:[0.81f,0.81f,0.81f]}}

# === REEL SLOTS (7 item_display entities, spread horizontally) ===
# Slot 1 (far left) — each slot starts with a different item for visual variety
execute positioned ^ ^2.45 ^1.8 positioned ^-1.35 ^0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSlot","ec.RS1"],billboard:"center",item:{id:"emerald",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

# Slot 2
execute positioned ^ ^2.45 ^1.8 positioned ^-0.9 ^0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSlot","ec.RS2"],billboard:"center",item:{id:"diamond",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

# Slot 3
execute positioned ^ ^2.45 ^1.8 positioned ^-0.45 ^0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSlot","ec.RS3"],billboard:"center",item:{id:"golden_carrot",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

# Slot 4 (CENTER — the winning slot)
execute positioned ^ ^2.45 ^1.8 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSlot","ec.RS4"],billboard:"center",item:{id:"nether_star",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

# Slot 5
execute positioned ^ ^2.45 ^1.8 positioned ^0.45 ^0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSlot","ec.RS5"],billboard:"center",item:{id:"echo_shard",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

# Slot 6
execute positioned ^ ^2.45 ^1.8 positioned ^0.9 ^0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSlot","ec.RS6"],billboard:"center",item:{id:"trial_key",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

# Slot 7 (far right)
execute positioned ^ ^2.45 ^1.8 positioned ^1.35 ^0 ^0 run summon item_display ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSlot","ec.RS7"],billboard:"center",item:{id:"cookie",count:1},item_display:"gui",transformation:{left_rotation:[0f,1f,0f,0f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,0.5f,0.01f]}}

# === SKIP BUTTON (below reel) ===
execute positioned ^ ^1.9 ^1.78 run summon text_display ~ ~ ~ {brightness:{block:15,sky:15},shadow_radius:0f,Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSkip"],billboard:"center",text:{text:"[ Skip ]",color:"gray"},background:1,shadow:1b,transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.405f,0.405f,0.405f]}}
execute positioned ^ ^1.83 ^1.8 run summon interaction ~ ~ ~ {Tags:["ec.FountainMenu","ec.ReelElement","ec.ReelSkipClick"],width:0.6f,height:0.07f,response:1b}
