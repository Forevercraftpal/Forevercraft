# Mob Crates - evoker kill (1 in 3 chance)
advancement revoke @s only evercraft:mob_crates/kill/evoker
function evercraft:bestiary/track/on_kill {score:"bs.k_evoker",dscore:"bs.d_evoker",threshold:500,pow:"#pow14",field:"lo",mob:"evoker",smob:"evoker",group:4}
data modify storage evercraft:mob_crates chance set value "0.3"
data modify storage evercraft:mob_crates dscore set value "bs.d_evoker"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
