# Mob Crates - polar_bear kill (1 in 83 chance)
advancement revoke @s only evercraft:mob_crates/kill/polar_bear
function evercraft:bestiary/track/on_kill {score:"bs.k_polarbr",dscore:"bs.d_polarbr",threshold:5000,pow:"#pow1",field:"hi",mob:"polar_bear",smob:"polarbr",group:2}
data modify storage evercraft:mob_crates chance set value "0.012"
data modify storage evercraft:mob_crates dscore set value "bs.d_polarbr"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
