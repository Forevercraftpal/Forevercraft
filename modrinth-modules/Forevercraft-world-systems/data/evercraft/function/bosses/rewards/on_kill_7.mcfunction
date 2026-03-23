# Infernal Titan kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 7
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_inftitan 15
function evercraft:bestiary/track/on_kill {score:"bs.k_inftitan",dscore:"bs.d_inftitan",threshold:100,pow:"#pow6",field:"wb",mob:"infernal_titan",smob:"inftitan",group:6}
function evercraft:bosses/rewards/on_kill
