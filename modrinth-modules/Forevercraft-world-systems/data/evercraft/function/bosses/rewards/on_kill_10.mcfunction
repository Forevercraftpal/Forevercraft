# Void Sovereign kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 10
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_voidsovr 15
function evercraft:bestiary/track/on_kill {score:"bs.k_voidsovr",dscore:"bs.d_voidsovr",threshold:100,pow:"#pow9",field:"wb",mob:"void_sovereign",smob:"voidsovr",group:6}
function evercraft:bosses/rewards/on_kill
