# Bestiary — Kill: zombie_horse (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/zombie_horse
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_zombhrs 15
function evercraft:bestiary/track/on_kill {score:"bs.k_zombhrs",dscore:"bs.d_zombhrs",threshold:1,pow:"#pow19",field:"hi",mob:"zombie_horse",smob:"zombhrs",group:1}
