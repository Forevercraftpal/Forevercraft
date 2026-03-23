# ============================================================
# Black Market — Refresh Buy Tab
# Shows 7 deals per page from the daily deals array
# Page 1: deals[0-6], Page 2: deals[7-13]
# ============================================================

# Calculate starting index: (page - 1) * 7
scoreboard players set #bm_row ec.bm_temp 0

# Copy deals to temp for macro access
# Page 1: indices 0-6, Page 2: indices 7-13
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.page_start set value 0
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.page_start set value 7

# Spawn 7 rows — each reads deal data and spawns text+interaction
# Row 0
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[0]
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[7]
execute if data storage eden:database black_market.temp.deal.name run function evercraft:black_market/gui/spawn_buy_row_0

# Row 1
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[1]
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[8]
execute if data storage eden:database black_market.temp.deal.name run function evercraft:black_market/gui/spawn_buy_row_1

# Row 2
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[2]
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[9]
execute if data storage eden:database black_market.temp.deal.name run function evercraft:black_market/gui/spawn_buy_row_2

# Row 3
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[3]
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[10]
execute if data storage eden:database black_market.temp.deal.name run function evercraft:black_market/gui/spawn_buy_row_3

# Row 4
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[4]
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[11]
execute if data storage eden:database black_market.temp.deal.name run function evercraft:black_market/gui/spawn_buy_row_4

# Row 5
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[5]
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[12]
execute if data storage eden:database black_market.temp.deal.name run function evercraft:black_market/gui/spawn_buy_row_5

# Row 6
execute if score @s ec.bm_page matches 1 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[6]
execute if score @s ec.bm_page matches 2 run data modify storage eden:database black_market.temp.deal set from storage eden:database black_market.deals[13]
execute if data storage eden:database black_market.temp.deal.name run function evercraft:black_market/gui/spawn_buy_row_6

# === PAGE NAVIGATION ===
# Previous page arrow (only on page 2)
execute if score @s ec.bm_page matches 2 rotated ~ 0 positioned ^0.5 ^1.8 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.SlotEl","BM.PrevTxt"],\
  billboard:"center",\
  text:{text:"< Prev",color:"gray",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}\
}
execute if score @s ec.bm_page matches 2 rotated ~ 0 positioned ^0.5 ^1.74 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.SlotEl","BM.PrevBtn"],width:0.3f,height:0.08f,response:1b\
}

# Next page arrow (only on page 1)
execute if score @s ec.bm_page matches 1 rotated ~ 0 positioned ^-0.5 ^1.8 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.SlotEl","BM.NextTxt"],\
  billboard:"center",\
  text:{text:"Next >",color:"gray",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}\
}
execute if score @s ec.bm_page matches 1 rotated ~ 0 positioned ^-0.5 ^1.74 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.SlotEl","BM.NextBtn"],width:0.3f,height:0.08f,response:1b\
}

# Page indicator
execute store result storage eden:database black_market.temp.page int 1 run scoreboard players get @s ec.bm_page
function evercraft:black_market/gui/spawn_page_indicator with storage eden:database black_market.temp
