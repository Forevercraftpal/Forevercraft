# Bestiary — Kill: parched (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/parched
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_parched 15
function evercraft:bestiary/track/on_kill {score:"bs.k_parched",dscore:"bs.d_parched",threshold:1,pow:"#pow26",field:"lo",mob:"parched",smob:"parched",group:2}
