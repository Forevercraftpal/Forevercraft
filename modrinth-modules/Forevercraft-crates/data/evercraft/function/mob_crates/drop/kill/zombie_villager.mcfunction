# Mob Crates - zombie_villager kill (1 in 25 chance)
advancement revoke @s only evercraft:mob_crates/kill/zombie_villager
function evercraft:bestiary/track/on_kill {score:"bs.k_zombvill",dscore:"bs.d_zombvill",threshold:5000,pow:"#pow21",field:"hi",mob:"zombie_villager",smob:"zombvill",group:1}
data modify storage evercraft:mob_crates chance set value "0.0402"
data modify storage evercraft:mob_crates dscore set value "bs.d_zombvill"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
