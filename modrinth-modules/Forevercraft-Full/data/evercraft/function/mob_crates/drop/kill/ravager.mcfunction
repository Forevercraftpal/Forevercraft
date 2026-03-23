# Mob Crates - ravager kill (1 in 2 chance)
advancement revoke @s only evercraft:mob_crates/kill/ravager
function evercraft:bestiary/track/on_kill {score:"bs.k_ravager",dscore:"bs.d_ravager",threshold:500,pow:"#pow2",field:"hi",mob:"ravager",smob:"ravager",group:3}
data modify storage evercraft:mob_crates chance set value "0.6"
data modify storage evercraft:mob_crates dscore set value "bs.d_ravager"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
