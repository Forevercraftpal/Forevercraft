# Bestiary — Kill: creaking (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/creaking
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_creaking 15
function evercraft:bestiary/track/on_kill {score:"bs.k_creaking",dscore:"bs.d_creaking",threshold:1,pow:"#pow6",field:"lo",mob:"creaking",smob:"creaking",group:4}
