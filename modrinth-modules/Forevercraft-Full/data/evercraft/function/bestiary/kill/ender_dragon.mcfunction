# Bestiary — Kill: ender_dragon (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/ender_dragon
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_edragon 15
function evercraft:bestiary/track/on_kill {score:"bs.k_edragon",dscore:"bs.d_edragon",threshold:100,pow:"#pow13",field:"lo",mob:"ender_dragon",smob:"edragon",group:5}
