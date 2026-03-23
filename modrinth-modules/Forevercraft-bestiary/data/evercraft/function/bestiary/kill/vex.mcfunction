# Bestiary — Kill: vex (bestiary-only, master on first kill)
advancement revoke @s only evercraft:bestiary/kill/vex
# Auto-fill drop tiers (no crate drops for this mob) so check_complete passes
scoreboard players set @s bs.d_vex 15
function evercraft:bestiary/track/on_kill {score:"bs.k_vex",dscore:"bs.d_vex",threshold:1,pow:"#pow10",field:"hi",mob:"vex",smob:"vex",group:3}
