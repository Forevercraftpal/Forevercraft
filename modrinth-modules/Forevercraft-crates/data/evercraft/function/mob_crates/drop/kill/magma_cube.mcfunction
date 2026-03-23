# Mob Crates - magma_cube kill (1 in 25 chance)
advancement revoke @s only evercraft:mob_crates/kill/magma_cube
function evercraft:bestiary/track/on_kill {score:"bs.k_magcube",dscore:"bs.d_magcube",threshold:5000,pow:"#pow24",field:"lo",mob:"magma_cube",smob:"magcube",group:2}
data modify storage evercraft:mob_crates chance set value "0.0402"
data modify storage evercraft:mob_crates dscore set value "bs.d_magcube"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
