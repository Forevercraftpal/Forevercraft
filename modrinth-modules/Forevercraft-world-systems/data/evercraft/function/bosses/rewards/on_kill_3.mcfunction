# Stormforged kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 3
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_stormfrg 15
function evercraft:bestiary/track/on_kill {score:"bs.k_stormfrg",dscore:"bs.d_stormfrg",threshold:100,pow:"#pow2",field:"wb",mob:"stormforged",smob:"stormfrg",group:6}
function evercraft:bosses/rewards/on_kill
