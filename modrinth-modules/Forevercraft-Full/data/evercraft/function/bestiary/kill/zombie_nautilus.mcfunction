# Bestiary — Kill: zombie_nautilus (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/zombie_nautilus
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_znautls 15
function evercraft:bestiary/track/on_kill {score:"bs.k_znautls",dscore:"bs.d_znautls",threshold:1,pow:"#pow20",field:"hi",mob:"zombie_nautilus",smob:"znautls",group:1}
