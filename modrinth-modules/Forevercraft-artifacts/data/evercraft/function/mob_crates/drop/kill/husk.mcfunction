# Mob Crates - husk kill (1 in 25 chance)
advancement revoke @s only evercraft:mob_crates/kill/husk
function evercraft:bestiary/track/on_kill {score:"bs.k_husk",dscore:"bs.d_husk",threshold:5000,pow:"#pow20",field:"lo",mob:"husk",smob:"husk",group:1}
data modify storage evercraft:mob_crates chance set value "0.0402"
data modify storage evercraft:mob_crates dscore set value "bs.d_husk"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
