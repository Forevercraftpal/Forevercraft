# ============================================================
# Black Market — Spawn GUI Shell
# Spawns background, title, tabs, netherite display, and close button
# Must run as player, at player position
# ============================================================

# Background panel (black stained glass pane)
execute rotated ~ 0 positioned ^ ^2.35 ^1.8 run summon item_display ~ ~ ~ {\
  Tags:["BM.El","BM.BG"],\
  billboard:"center",\
  item:{id:"black_stained_glass_pane",count:1},\
  item_display:"fixed",\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,-0.02f],scale:[3.4f,2.8f,0.01f]}\
}

# Title
execute rotated ~ 0 positioned ^ ^3.3 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.Title"],\
  billboard:"center",\
  text:{text:"\u2620 Black Market \u2620",color:"dark_red",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.55f,0.55f,0.55f]}\
}

# === TAB BUTTONS ===
# Buy tab
execute rotated ~ 0 positioned ^0.6 ^3.1 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.TabBuyTxt"],\
  billboard:"center",\
  text:{text:"[ Buy ]",color:"gray"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^0.6 ^3.04 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.TabBuyBtn"],width:0.35f,height:0.08f,response:1b\
}

# Sell tab
execute rotated ~ 0 positioned ^ ^3.1 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.TabSellTxt"],\
  billboard:"center",\
  text:{text:"[ Sell ]",color:"gray"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^ ^3.04 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.TabSellBtn"],width:0.35f,height:0.08f,response:1b\
}

# Listings tab
execute rotated ~ 0 positioned ^-0.6 ^3.1 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.TabListTxt"],\
  billboard:"center",\
  text:{text:"[ Listings ]",color:"gray"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^-0.6 ^3.04 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.TabListBtn"],width:0.45f,height:0.08f,response:1b\
}

# === NETHERITE DISPLAY (bottom bar) ===
execute rotated ~ 0 positioned ^ ^1.67 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.NethDisplay"],\
  billboard:"center",\
  text:{text:"Netherite: ...",color:"aqua"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}\
}

# === DEAL TIMER DISPLAY ===
execute rotated ~ 0 positioned ^ ^1.57 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.Timer"],\
  billboard:"center",\
  text:{text:"Deals rotate at dawn",color:"dark_gray",italic:true},\
  background:0,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.25f,0.25f,0.25f]}\
}

# === CLOSE BUTTON ===
execute rotated ~ 0 positioned ^ ^1.47 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.CloseTxt"],\
  billboard:"center",\
  text:[{text:"[ ",color:"dark_gray"},{text:"Close",color:"gray",bold:true},{text:" ]",color:"dark_gray"}],\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}\
}
execute rotated ~ 0 positioned ^ ^1.37 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.CloseBtn"],width:0.4f,height:0.12f,response:1b\
}
