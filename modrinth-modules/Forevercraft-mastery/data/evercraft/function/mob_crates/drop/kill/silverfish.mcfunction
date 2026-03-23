# Mob Crates - silverfish kill (1 in 51 chance)
advancement revoke @s only evercraft:mob_crates/kill/silverfish
function evercraft:bestiary/track/on_kill {score:"bs.k_silvrfsh",dscore:"bs.d_silvrfsh",threshold:5000,pow:"#pow4",field:"hi",mob:"silverfish",smob:"silvrfsh",group:1}
data modify storage evercraft:mob_crates chance set value "0.0198"
data modify storage evercraft:mob_crates dscore set value "bs.d_silvrfsh"
function evercraft:mob_crates/drop/regular with storage evercraft:mob_crates

# Forever Coin — 1/2500 flat chance (no DR scaling)
function evercraft:coins/mob_drop
