# Bestiary — Kill: zoglin (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/zoglin
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_zoglin 15
function evercraft:bestiary/track/on_kill {score:"bs.k_zoglin",dscore:"bs.d_zoglin",threshold:1,pow:"#pow17",field:"hi",mob:"zoglin",smob:"zoglin",group:1}
