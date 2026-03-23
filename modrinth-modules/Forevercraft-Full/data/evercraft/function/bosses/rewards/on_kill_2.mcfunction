# Verdant Warden kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 2
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_verdwrdn 15
function evercraft:bestiary/track/on_kill {score:"bs.k_verdwrdn",dscore:"bs.d_verdwrdn",threshold:100,pow:"#pow1",field:"wb",mob:"verdant_warden",smob:"verdwrdn",group:6}
function evercraft:bosses/rewards/on_kill
