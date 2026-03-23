# Mob Crates - zombie kill (1 in 42 chance)
advancement revoke @s only evercraft:mob_crates/kill/zombie
function evercraft:bestiary/track/on_kill {score:"bs.k_zombie",dscore:"bs.d_zombie",threshold:5000,pow:"#pow18",field:"hi",mob:"zombie",smob:"zombie",group:1}
data modify storage evercraft:mob_crates chance set value "0.024"
data modify storage evercraft:mob_crates dscore set value "bs.d_zombie"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
