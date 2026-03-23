# Mining Surge Expire — Remove temporary block_break_speed boost
attribute @s block_break_speed modifier remove evercraft:adv_mining_surge
title @s actionbar [{text:"⛏ Miner's Surge faded...",color:"gray",italic:true}]

# Re-sync mine_prev so blocks mined during surge don't trigger an immediate re-proc
function evercraft:advantage/mining/sum_blocks
scoreboard players operation @s adv.mine_prev = #mine_rt adv.temp
