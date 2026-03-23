# Mob Crates - elder_guardian kill (1 in 2 chance)
advancement revoke @s only evercraft:mob_crates/kill/elder_guardian
function evercraft:bestiary/track/on_kill {score:"bs.k_e_guard",dscore:"bs.d_e_guard",threshold:500,pow:"#pow10",field:"lo",mob:"elder_guardian",smob:"e_guard",group:4}
data modify storage evercraft:mob_crates chance set value "0.6"
data modify storage evercraft:mob_crates dscore set value "bs.d_e_guard"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
