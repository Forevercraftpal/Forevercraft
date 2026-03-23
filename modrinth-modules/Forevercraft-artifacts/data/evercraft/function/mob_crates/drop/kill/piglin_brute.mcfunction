# Mob Crates - piglin_brute kill (1 in 3 chance)
advancement revoke @s only evercraft:mob_crates/kill/piglin_brute
function evercraft:bestiary/track/on_kill {score:"bs.k_pigbrute",dscore:"bs.d_pigbrute",threshold:500,pow:"#pow29",field:"lo",mob:"piglin_brute",smob:"pigbrute",group:3}
data modify storage evercraft:mob_crates chance set value "0.3"
data modify storage evercraft:mob_crates dscore set value "bs.d_pigbrute"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
