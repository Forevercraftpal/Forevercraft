# Mob Crates - hoglin kill (1 in 13 chance)
advancement revoke @s only evercraft:mob_crates/kill/hoglin
function evercraft:bestiary/track/on_kill {score:"bs.k_hoglin",dscore:"bs.d_hoglin",threshold:5000,pow:"#pow19",field:"lo",mob:"hoglin",smob:"hoglin",group:1}
data modify storage evercraft:mob_crates chance set value "0.0798"
data modify storage evercraft:mob_crates dscore set value "bs.d_hoglin"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
