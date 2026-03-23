# Mob Crates - breeze kill (1 in 8 chance)
advancement revoke @s only evercraft:mob_crates/kill/breeze
function evercraft:bestiary/track/on_kill {score:"bs.k_breeze",dscore:"bs.d_breeze",threshold:5000,pow:"#pow3",field:"lo",mob:"breeze",smob:"breeze",group:3}
data modify storage evercraft:mob_crates chance set value "0.12"
data modify storage evercraft:mob_crates dscore set value "bs.d_breeze"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
