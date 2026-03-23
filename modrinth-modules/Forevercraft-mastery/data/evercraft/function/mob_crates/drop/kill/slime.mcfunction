# Mob Crates - slime kill (1 in 42 chance)
advancement revoke @s only evercraft:mob_crates/kill/slime
function evercraft:bestiary/track/on_kill {score:"bs.k_slime",dscore:"bs.d_slime",threshold:5000,pow:"#pow6",field:"hi",mob:"slime",smob:"slime",group:1}
data modify storage evercraft:mob_crates chance set value "0.024"
data modify storage evercraft:mob_crates dscore set value "bs.d_slime"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
