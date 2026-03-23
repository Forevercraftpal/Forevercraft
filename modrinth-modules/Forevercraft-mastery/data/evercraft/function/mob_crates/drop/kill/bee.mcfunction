# Mob Crates - bee kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/bee
function evercraft:bestiary/track/on_kill {score:"bs.k_bee",dscore:"bs.d_bee",threshold:5000,pow:"#pow0",field:"lo",mob:"bee",smob:"bee",group:2}
data modify storage evercraft:mob_crates chance set value "0.012"
data modify storage evercraft:mob_crates dscore set value "bs.d_bee"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
