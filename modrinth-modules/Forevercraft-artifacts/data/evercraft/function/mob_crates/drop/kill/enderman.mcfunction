# Mob Crates - enderman kill (1 in 8 chance)
advancement revoke @s only evercraft:mob_crates/kill/enderman
function evercraft:bestiary/track/on_kill {score:"bs.k_enderman",dscore:"bs.d_enderman",threshold:5000,pow:"#pow11",field:"lo",mob:"enderman",smob:"enderman",group:2}
data modify storage evercraft:mob_crates chance set value "0.12"
data modify storage evercraft:mob_crates dscore set value "bs.d_enderman"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
