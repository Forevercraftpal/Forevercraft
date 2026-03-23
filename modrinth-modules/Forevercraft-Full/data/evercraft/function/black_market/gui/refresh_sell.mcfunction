# ============================================================
# Black Market — Refresh Sell Tab
# Shows instructions, appraisal area, and sell button
# ============================================================

# Instruction text
execute rotated ~ 0 positioned ^ ^2.9 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.SlotEl","BM.SellInstr"],\
  billboard:"center",\
  text:{text:"Hold an item in your mainhand, then click Appraise",color:"gray",italic:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.3f,0.3f,0.3f]}\
}

# Appraisal result area (initially empty)
execute rotated ~ 0 positioned ^ ^2.6 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.SlotEl","BM.AppraiseTxt"],\
  billboard:"center",\
  text:{text:"No item appraised yet.",color:"dark_gray"},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}

# [Appraise] button
execute rotated ~ 0 positioned ^0.3 ^2.3 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.SlotEl","BM.ApprBtnTxt"],\
  billboard:"center",\
  text:{text:"[ Appraise ]",color:"yellow",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^0.3 ^2.24 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.SlotEl","BM.AppraiseBtn"],width:0.4f,height:0.08f,response:1b\
}

# [Confirm Sell] button
execute rotated ~ 0 positioned ^-0.3 ^2.3 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.SlotEl","BM.SellBtnTxt"],\
  billboard:"center",\
  text:{text:"[ Sell Item ]",color:"green",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.4f,0.4f,0.4f]}\
}
execute rotated ~ 0 positioned ^-0.3 ^2.24 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.SlotEl","BM.SellBtn"],width:0.45f,height:0.08f,response:1b\
}

# Listing count display
execute store result storage eden:database black_market.temp.list_count int 1 run scoreboard players get @s ec.bm_listings
function evercraft:black_market/gui/show_listing_count with storage eden:database black_market.temp
