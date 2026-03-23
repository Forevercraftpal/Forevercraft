# Mob Crates - zombified_piglin kill (1 in 33 chance)
advancement revoke @s only evercraft:mob_crates/kill/zombified_piglin
function evercraft:bestiary/track/on_kill {score:"bs.k_zombpig",dscore:"bs.d_zombpig",threshold:5000,pow:"#pow22",field:"hi",mob:"zombified_piglin",smob:"zombpig",group:1}
data modify storage evercraft:mob_crates chance set value "0.03"
data modify storage evercraft:mob_crates dscore set value "bs.d_zombpig"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
