# Mob Crates - cave_spider kill (1 in 25 chance)
advancement revoke @s only evercraft:mob_crates/kill/cave_spider
function evercraft:bestiary/track/on_kill {score:"bs.k_cavespdr",dscore:"bs.d_cavespdr",threshold:5000,pow:"#pow5",field:"lo",mob:"cave_spider",smob:"cavespdr",group:1}
data modify storage evercraft:mob_crates chance set value "0.0402"
data modify storage evercraft:mob_crates dscore set value "bs.d_cavespdr"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
