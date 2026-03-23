# Bestiary — Kill: camel_husk (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/camel_husk
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_camhusk 15
function evercraft:bestiary/track/on_kill {score:"bs.k_camhusk",dscore:"bs.d_camhusk",threshold:1,pow:"#pow4",field:"lo",mob:"camel_husk",smob:"camhusk",group:3}
