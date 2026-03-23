# Ender Architect kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 11
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_endrarch 15
function evercraft:bestiary/track/on_kill {score:"bs.k_endrarch",dscore:"bs.d_endrarch",threshold:100,pow:"#pow10",field:"wb",mob:"ender_architect",smob:"endrarch",group:6}
function evercraft:bosses/rewards/on_kill
