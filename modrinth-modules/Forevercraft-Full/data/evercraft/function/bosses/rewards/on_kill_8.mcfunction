# Soul Warden kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 8
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_soulwrdn 15
function evercraft:bestiary/track/on_kill {score:"bs.k_soulwrdn",dscore:"bs.d_soulwrdn",threshold:100,pow:"#pow7",field:"wb",mob:"soul_warden",smob:"soulwrdn",group:6}
function evercraft:bosses/rewards/on_kill
