# Mob Crates - blaze kill (1 in 13 chance)
advancement revoke @s only evercraft:mob_crates/kill/blaze
function evercraft:bestiary/track/on_kill {score:"bs.k_blaze",dscore:"bs.d_blaze",threshold:5000,pow:"#pow1",field:"lo",mob:"blaze",smob:"blaze",group:2}
data modify storage evercraft:mob_crates chance set value "0.0798"
data modify storage evercraft:mob_crates dscore set value "bs.d_blaze"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
