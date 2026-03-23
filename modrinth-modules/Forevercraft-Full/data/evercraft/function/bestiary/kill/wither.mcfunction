# Bestiary — Kill: wither (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/wither
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_wither 15
function evercraft:bestiary/track/on_kill {score:"bs.k_wither",dscore:"bs.d_wither",threshold:1,pow:"#pow14",field:"hi",mob:"wither",smob:"wither",group:5}
