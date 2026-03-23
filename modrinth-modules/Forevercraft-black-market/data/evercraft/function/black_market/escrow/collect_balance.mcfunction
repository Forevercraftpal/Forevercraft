# ============================================================
# Black Market — Collect Pending Balance
# Gives player their pending netherite ingots
# ============================================================

# Check if there's anything to collect
execute if score @s ec.bm_balance matches ..0 run return run tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"No pending balance to collect.",color:"gray"}]

# Give netherite via macro
execute store result storage eden:database black_market.temp.amount int 1 run scoreboard players get @s ec.bm_balance
function evercraft:black_market/escrow/give_netherite with storage eden:database black_market.temp

# Zero out balance in storage
execute store result storage eden:database black_market.temp.u0 int 1 run data get entity @s UUID[0]
execute store result storage eden:database black_market.temp.u1 int 1 run data get entity @s UUID[1]
execute store result storage eden:database black_market.temp.u2 int 1 run data get entity @s UUID[2]
execute store result storage eden:database black_market.temp.u3 int 1 run data get entity @s UUID[3]
function evercraft:black_market/escrow/zero_balance with storage eden:database black_market.temp

# Update cached balance
scoreboard players set @s ec.bm_balance 0

# Feedback
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 0.8 1.2
tellraw @s [{text:"[Forevercraft] ",color:"gold"},{text:"Balance collected!",color:"green"}]

# Refresh
function evercraft:black_market/gui/refresh
