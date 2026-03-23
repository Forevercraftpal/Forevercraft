# Mob Crates - iron_golem kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/iron_golem
function evercraft:bestiary/track/on_kill {score:"bs.k_ironglm",dscore:"bs.d_ironglm",threshold:500,pow:"#pow22",field:"lo",mob:"iron_golem",smob:"ironglm",group:2}
data modify storage evercraft:mob_crates chance set value "0.012"
data modify storage evercraft:mob_crates dscore set value "bs.d_ironglm"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
