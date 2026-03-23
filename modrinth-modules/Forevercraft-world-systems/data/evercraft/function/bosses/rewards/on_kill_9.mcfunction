# Crimson Behemoth kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 9
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_crimbhmt 15
function evercraft:bestiary/track/on_kill {score:"bs.k_crimbhmt",dscore:"bs.d_crimbhmt",threshold:100,pow:"#pow8",field:"wb",mob:"crimson_behemoth",smob:"crimbhmt",group:6}
function evercraft:bosses/rewards/on_kill
