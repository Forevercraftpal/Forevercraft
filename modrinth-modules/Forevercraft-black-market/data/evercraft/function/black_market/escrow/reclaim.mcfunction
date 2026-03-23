# ============================================================
# Black Market — Reclaim Item from Escrow
# ec.bm_select = slot index (0-4) to reclaim
# Uses hopper minecart intermediary to restore item
# ============================================================

# Build UUID key
execute store result storage eden:database black_market.temp.u0 int 1 run data get entity @s UUID[0]
execute store result storage eden:database black_market.temp.u1 int 1 run data get entity @s UUID[1]
execute store result storage eden:database black_market.temp.u2 int 1 run data get entity @s UUID[2]
execute store result storage eden:database black_market.temp.u3 int 1 run data get entity @s UUID[3]

# Load the selected slot index
execute store result storage eden:database black_market.temp.slot int 1 run scoreboard players get @s ec.bm_select

# Copy item from escrow to temp
function evercraft:black_market/escrow/load_reclaim_item with storage eden:database black_market.temp

# Check if item exists
execute unless data storage eden:database black_market.temp.reclaim_item.item run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Nothing in that slot!",color:"red"}]

# Restore item via hopper minecart intermediary
summon hopper_minecart ~ ~ ~ {Tags:["BM.TempCart"]}
# Copy item data to cart, adding required Slot:0b
data modify storage eden:database black_market.temp.cart_item set from storage eden:database black_market.temp.reclaim_item.item
data modify storage eden:database black_market.temp.cart_item.Slot set value 0b
data modify entity @e[type=hopper_minecart,tag=BM.TempCart,limit=1,sort=nearest] Items append from storage eden:database black_market.temp.cart_item
# Move item from cart to player's mainhand
item replace entity @s weapon.mainhand from entity @e[type=hopper_minecart,tag=BM.TempCart,limit=1,sort=nearest] container.0
# Clear cart inventory before killing to prevent item drop duplication
data modify entity @e[type=hopper_minecart,tag=BM.TempCart,limit=1,sort=nearest] Items set value []
kill @e[type=hopper_minecart,tag=BM.TempCart]

# Remove item from escrow storage
function evercraft:black_market/escrow/remove_listing with storage eden:database black_market.temp

# Decrement listing count
scoreboard players remove @s ec.bm_listings 1
execute if score @s ec.bm_listings matches ..-1 run scoreboard players set @s ec.bm_listings 0

# Feedback
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 0.6 1.0
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Item reclaimed!",color:"green"}]

# Refresh GUI
function evercraft:black_market/gui/refresh
