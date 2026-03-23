# Mob Crates - ghast kill (1 in 8 chance)
advancement revoke @s only evercraft:mob_crates/kill/ghast
function evercraft:bestiary/track/on_kill {score:"bs.k_ghast",dscore:"bs.d_ghast",threshold:5000,pow:"#pow16",field:"lo",mob:"ghast",smob:"ghast",group:3}
data modify storage evercraft:mob_crates chance set value "0.12"
data modify storage evercraft:mob_crates dscore set value "bs.d_ghast"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
