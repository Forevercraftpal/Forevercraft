# Mob Crates - stray kill (1 in 25 chance)
advancement revoke @s only evercraft:mob_crates/kill/stray
function evercraft:bestiary/track/on_kill {score:"bs.k_stray",dscore:"bs.d_stray",threshold:5000,pow:"#pow8",field:"hi",mob:"stray",smob:"stray",group:2}
data modify storage evercraft:mob_crates chance set value "0.0402"
data modify storage evercraft:mob_crates dscore set value "bs.d_stray"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
