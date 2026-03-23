# Hollow King kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 1
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_hollking 15
function evercraft:bestiary/track/on_kill {score:"bs.k_hollking",dscore:"bs.d_hollking",threshold:100,pow:"#pow0",field:"wb",mob:"hollow_king",smob:"hollking",group:6}
function evercraft:bosses/rewards/on_kill
