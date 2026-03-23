# Earthshaker kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 5
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_erthshkr 15
function evercraft:bestiary/track/on_kill {score:"bs.k_erthshkr",dscore:"bs.d_erthshkr",threshold:100,pow:"#pow4",field:"wb",mob:"earthshaker",smob:"erthshkr",group:6}
function evercraft:bosses/rewards/on_kill
