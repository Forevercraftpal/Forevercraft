# ============================================================
# Black Market — Refresh Listings Tab
# Shows player's escrowed items with reclaim buttons
# Shows pending balance with collect button
# ============================================================

# Reload player data to ensure fresh counts
function evercraft:black_market/escrow/load_player

# Build UUID key for storage access
execute store result storage eden:database black_market.temp.u0 int 1 run data get entity @s UUID[0]
execute store result storage eden:database black_market.temp.u1 int 1 run data get entity @s UUID[1]
execute store result storage eden:database black_market.temp.u2 int 1 run data get entity @s UUID[2]
execute store result storage eden:database black_market.temp.u3 int 1 run data get entity @s UUID[3]

# Copy player's escrow items to temp for reading
function evercraft:black_market/gui/load_listings_temp with storage eden:database black_market.temp

# === LISTING ROWS (5 slots) ===
# Each row checks if item exists at that index, shows name + [Reclaim] or (empty)

# Slot 0
scoreboard players set #bm_slot ec.bm_temp 0
execute if data storage eden:database black_market.temp.listings[0] run function evercraft:black_market/gui/spawn_listing_row_filled_0
execute unless data storage eden:database black_market.temp.listings[0] run function evercraft:black_market/gui/spawn_listing_row_empty_0

# Slot 1
execute if data storage eden:database black_market.temp.listings[1] run function evercraft:black_market/gui/spawn_listing_row_filled_1
execute unless data storage eden:database black_market.temp.listings[1] run function evercraft:black_market/gui/spawn_listing_row_empty_1

# Slot 2
execute if data storage eden:database black_market.temp.listings[2] run function evercraft:black_market/gui/spawn_listing_row_filled_2
execute unless data storage eden:database black_market.temp.listings[2] run function evercraft:black_market/gui/spawn_listing_row_empty_2

# Slot 3
execute if data storage eden:database black_market.temp.listings[3] run function evercraft:black_market/gui/spawn_listing_row_filled_3
execute unless data storage eden:database black_market.temp.listings[3] run function evercraft:black_market/gui/spawn_listing_row_empty_3

# Slot 4
execute if data storage eden:database black_market.temp.listings[4] run function evercraft:black_market/gui/spawn_listing_row_filled_4
execute unless data storage eden:database black_market.temp.listings[4] run function evercraft:black_market/gui/spawn_listing_row_empty_4

# === PENDING BALANCE ===
execute store result storage eden:database black_market.temp.bal int 1 run scoreboard players get @s ec.bm_balance
function evercraft:black_market/gui/spawn_balance_row with storage eden:database black_market.temp

# [Collect] button (only if balance > 0)
execute if score @s ec.bm_balance matches 1.. rotated ~ 0 positioned ^-0.4 ^1.86 ^1.78 run summon text_display ~ ~ ~ {\
  brightness:{block:15,sky:15},shadow_radius:0f,\
  Tags:["BM.El","BM.SlotEl","BM.CollectTxt"],\
  billboard:"center",\
  text:{text:"[ Collect ]",color:"green",bold:true},\
  background:1,shadow:1b,\
  transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.35f,0.35f,0.35f]}\
}
execute if score @s ec.bm_balance matches 1.. rotated ~ 0 positioned ^-0.4 ^1.8 ^1.8 run summon interaction ~ ~ ~ {\
  Tags:["BM.El","BM.SlotEl","BM.CollectBtn"],width:0.35f,height:0.08f,response:1b\
}
