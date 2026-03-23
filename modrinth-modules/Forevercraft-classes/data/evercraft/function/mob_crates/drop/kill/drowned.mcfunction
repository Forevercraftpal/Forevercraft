# Mob Crates - drowned kill (1 in 25 chance)
advancement revoke @s only evercraft:mob_crates/kill/drowned
function evercraft:bestiary/track/on_kill {score:"bs.k_drowned",dscore:"bs.d_drowned",threshold:5000,pow:"#pow9",field:"lo",mob:"drowned",smob:"drowned",group:1}
data modify storage evercraft:mob_crates chance set value "0.0402"
data modify storage evercraft:mob_crates dscore set value "bs.d_drowned"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
