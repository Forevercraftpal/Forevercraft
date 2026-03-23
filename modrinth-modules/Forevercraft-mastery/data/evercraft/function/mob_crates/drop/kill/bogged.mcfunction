# Mob Crates - bogged kill (1 in 25 chance)
advancement revoke @s only evercraft:mob_crates/kill/bogged
function evercraft:bestiary/track/on_kill {score:"bs.k_bogged",dscore:"bs.d_bogged",threshold:5000,pow:"#pow2",field:"lo",mob:"bogged",smob:"bogged",group:2}
data modify storage evercraft:mob_crates chance set value "0.0402"
data modify storage evercraft:mob_crates dscore set value "bs.d_bogged"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
