# Dreaming Realm — Place Lore Displays
# Spawns 5 text_display lore pieces in the SW Lore Chamber
# Context: called during construct phase, at player bed position (same as arena center)
# Lore Chamber interior: ~-17,~11 to ~-11,~17 at Y=302-304

# 1. "The First Dream" — NW corner of chamber
execute at @e[type=marker,tag=dr.center,limit=1] run summon text_display ~-16 303 ~12 {text:{text:"✦ The First Dream",color:"#9B59B6",italic:true},Tags:["ec.dream_entity","dr.lore","dr.lore1"],billboard:"center",Glowing:1b,shadow:true}

# 2. "The Dreamer's Path" — NE corner of chamber
execute at @e[type=marker,tag=dr.center,limit=1] run summon text_display ~-12 303 ~12 {text:{text:"✦ The Dreamer's Path",color:"#9B59B6",italic:true},Tags:["ec.dream_entity","dr.lore","dr.lore2"],billboard:"center",Glowing:1b,shadow:true}

# 3. "Echoes of Forever" — Center south wall
execute at @e[type=marker,tag=dr.center,limit=1] run summon text_display ~-14 303 ~16 {text:{text:"✦ Echoes of Forever",color:"#9B59B6",italic:true},Tags:["ec.dream_entity","dr.lore","dr.lore3"],billboard:"center",Glowing:1b,shadow:true}

# 4. "The Waking World" — SW corner of chamber
execute at @e[type=marker,tag=dr.center,limit=1] run summon text_display ~-16 303 ~16 {text:{text:"✦ The Waking World",color:"#9B59B6",italic:true},Tags:["ec.dream_entity","dr.lore","dr.lore4"],billboard:"center",Glowing:1b,shadow:true}

# 5. "Claude's Dream" — SE corner of chamber (special placement)
execute at @e[type=marker,tag=dr.center,limit=1] run summon text_display ~-12 303 ~16 {text:{text:"✦ Claude's Dream",color:"#E8A0F0",italic:true},Tags:["ec.dream_entity","dr.lore","dr.lore5"],billboard:"center",Glowing:1b,shadow:true}
