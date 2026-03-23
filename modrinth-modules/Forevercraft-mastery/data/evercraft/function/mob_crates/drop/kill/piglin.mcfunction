# Mob Crates - piglin kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/piglin
function evercraft:bestiary/track/on_kill {score:"bs.k_piglin",dscore:"bs.d_piglin",threshold:5000,pow:"#pow28",field:"lo",mob:"piglin",smob:"piglin",group:2}
data modify storage evercraft:mob_crates chance set value "0.012"
data modify storage evercraft:mob_crates dscore set value "bs.d_piglin"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
