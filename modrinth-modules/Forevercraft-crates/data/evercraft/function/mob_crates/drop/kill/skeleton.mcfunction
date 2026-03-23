# Mob Crates - skeleton kill (1 in 33 chance)
advancement revoke @s only evercraft:mob_crates/kill/skeleton
function evercraft:bestiary/track/on_kill {score:"bs.k_skeleton",dscore:"bs.d_skeleton",threshold:5000,pow:"#pow5",field:"hi",mob:"skeleton",smob:"skeleton",group:1}
data modify storage evercraft:mob_crates chance set value "0.03"
data modify storage evercraft:mob_crates dscore set value "bs.d_skeleton"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
