# Nightmare kill — set boss_id before reward distribution
scoreboard players set #wb_boss_id ec.var 6
# Bestiary tracking (bestiary-only, auto-fill drops)
scoreboard players set @s bs.d_nightmre 15
function evercraft:bestiary/track/on_kill {score:"bs.k_nightmre",dscore:"bs.d_nightmre",threshold:100,pow:"#pow5",field:"wb",mob:"nightmare",smob:"nightmre",group:6}
function evercraft:bosses/rewards/on_kill
