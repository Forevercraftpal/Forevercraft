# Mob Crates - vindicator kill (1 in 8 chance)
advancement revoke @s only evercraft:mob_crates/kill/vindicator
function evercraft:bestiary/track/on_kill {score:"bs.k_vindctr",dscore:"bs.d_vindctr",threshold:5000,pow:"#pow11",field:"hi",mob:"vindicator",smob:"vindctr",group:3}
data modify storage evercraft:mob_crates chance set value "0.12"
data modify storage evercraft:mob_crates dscore set value "bs.d_vindctr"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
