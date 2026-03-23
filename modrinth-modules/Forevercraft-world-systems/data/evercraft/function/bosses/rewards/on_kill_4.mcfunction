# Tidecaller kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 4
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_tidecllr 15
function evercraft:bestiary/track/on_kill {score:"bs.k_tidecllr",dscore:"bs.d_tidecllr",threshold:100,pow:"#pow3",field:"wb",mob:"tidecaller",smob:"tidecllr",group:6}
function evercraft:bosses/rewards/on_kill
